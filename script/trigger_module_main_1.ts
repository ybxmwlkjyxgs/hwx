module hwx_6151 {
	export let 主玩家: Player = base.player(1);
	export let 敌人玩家: Player = base.player(2);
	export let 单个刷怪:(刷怪表:_OBJ__spawner_Spawner)=>void = (刷怪表:_OBJ__spawner_Spawner):void => {
		base.timer_wait(刷怪表.delay, ():void => {
			base.timer_timer(刷怪表.pulse, 刷怪表.times, ():void => {
				let 怪物Id: IdPreset<"unit_id"> = 刷怪表.monster;
				let 创建角度: number = 0;
				let 创建位置: Point = hwx_6151.主玩家.get_hero().get_scene_point();
				for (let index = 0; index <= 刷怪表.num; index += 1) {
					创建角度 = base.math.random_float(0, 360);
					创建位置 = hwx_6151.主玩家.get_hero().get_scene_point().polar_to_ex(创建角度, hwx_6151.刷怪范围);
					创建位置 = base.scene_point(base.math.max(base.math.min(创建位置.get_x(), hwx_6151.地图坐标最大值), hwx_6151.地图坐标最小值), base.math.max(base.math.min(创建位置.get_y(), hwx_6151.地图坐标最大值), hwx_6151.地图坐标最小值), undefined, Scene["default"]);
					base.player_create_unit_ai(hwx_6151.敌人玩家, 怪物Id, 创建位置, 0, true);
				}
			});
		});
	}
	export let 单波刷怪:(波次表:_OBJ__wave_Wave)=>void = (波次表:_OBJ__wave_Wave):void => {
		let 波次准备时间: number = 波次表.wave_delay;
		let 波次持续时间: number = 波次表.wave_time;
		let 刷怪Id数组: Array<IdPreset<"spawner_id">> = 波次表.wave_data;
		if (((波次持续时间 == -1))) {
			波次持续时间 = 0;
			if (刷怪Id数组 !== undefined) {
				for (let [遍历到的数组索引, 遍历到的数组元素] of base.ArrayIterator(刷怪Id数组 as unknown as Array<IdPreset<"spawner_id">>)) {
					let 刷怪表: _OBJ__spawner_Spawner = base.eff.cache_ts<_OBJ__spawner_Spawner>(遍历到的数组元素);
					波次持续时间 = base.math.max((刷怪表.delay + (刷怪表.times * 刷怪表.pulse)), 波次持续时间);
				}
			} else {
				log.warn("不能遍历：刷怪Id数组")
			}
		} else {
		}
		base.timer_sleep(波次准备时间);
		log.debug("刷怪", 波次表.Name, 波次持续时间);
		if (刷怪Id数组 !== undefined) {
			for (let [遍历到的数组索引, 遍历到的数组元素] of base.ArrayIterator(刷怪Id数组 as unknown as Array<IdPreset<"spawner_id">>)) {
				let 刷怪表: _OBJ__spawner_Spawner = base.eff.cache_ts<_OBJ__spawner_Spawner>(遍历到的数组元素);
				hwx_6151.单个刷怪(刷怪表);
			}
		} else {
			log.warn("不能遍历：刷怪Id数组")
		}
		base.timer_sleep(波次持续时间);
	}
	function _TRIG_关卡刷怪_FUNC(this: void, 当前触发器: Trigger, e:base.EventPlayerJoin) {
		let 关卡配置表: _OBJ__level_Level = base.force_as<_OBJ__level_Level>(base.eff.cache(hwx_6151.关卡配置表Id));
		if (true) {
			base.timer_sleep(5);
			if (关卡配置表.waves !== undefined) {
				for (let [遍历到的数组索引, 遍历到的数组元素] of base.ArrayIterator(关卡配置表.waves as unknown as Array<IdPreset<"wave_id">>)) {
					let 波次表: _OBJ__wave_Wave = base.force_as<_OBJ__wave_Wave>(base.eff.cache(遍历到的数组元素));
					hwx_6151.单波刷怪(波次表);
				}
			} else {
				log.warn("不能遍历：关卡配置表.waves")
			}
			log.info("刷怪结束！30秒后结束游戏");
			base.timer_sleep(30);
			base.pause_game();
			hwx_6151.游戏胜利();
		}
	}
	export let 关卡刷怪 = base.trigger_new(_TRIG_关卡刷怪_FUNC, [], false, undefined, true)
	export let 刷怪范围: number = 1500;
	export let 地图坐标最小值: number = 200;
	export let 地图坐标最大值: number = 16184;
	export let 关卡配置表Id: IdPreset<"level_id"> = (("$$hwx_6151.level.吸血鬼默认关卡.root") as unknown as IdPreset<"level_id">);
	function _TRIG_游戏开始时弹出初始选择_FUNC(this: void, 当前触发器: Trigger, e:base.EventPlayerJoin) {
		if (((e.is_reconnect == false))) {
			base.pause_game();
			smallcard_choose_one.open_n_pick_1(hwx_6151.主玩家.get_hero(), 3, hwx_6151.英雄初始技能奖励表Id);
		}
	}
	export let 游戏开始时弹出初始选择 = base.trigger_new(_TRIG_游戏开始时弹出初始选择_FUNC, [], false, undefined, true)
	function _TRIG_升级时弹出选择_FUNC(this: void, 当前触发器: Trigger, e:base.EventUnitLevelUp) {
		if (((e.unit == hwx_6151.主玩家.get_hero()))) {
			log.debug("主控升级，弹出选择");
			base.pause_game();
			smallcard_choose_one.open_n_pick_1(hwx_6151.主玩家.get_hero(), 3, hwx_6151.英雄技能奖励表Id);
		}
	}
	export let 升级时弹出选择 = base.trigger_new(_TRIG_升级时弹出选择_FUNC, [], false, undefined, true)
	function _TRIG_选择后继续游戏_FUNC(this: void, 当前触发器: Trigger, e:smallcard_choose_one.玩家点击关闭n选1) {
		let 玩家: Player = e.player;
		if (((玩家 == hwx_6151.主玩家))) {
			base.unpause_game();
		}
	}
	export let 选择后继续游戏 = base.trigger_new(_TRIG_选择后继续游戏_FUNC, [], false, undefined, true)
	export let 英雄初始技能奖励表Id: IdPreset<"loot_pool_id"> = (("$$hwx_6151.loot_pool.英雄初始技能奖励池.root") as unknown as IdPreset<"loot_pool_id">);
	export let 英雄技能奖励表Id: IdPreset<"loot_pool_id"> = (("$$hwx_6151.loot_pool.英雄技能奖励池.root") as unknown as IdPreset<"loot_pool_id">);
	export class 游戏结束事件 extends TriggerEvent{
		constructor(public obj:base.Game, public is_win:boolean) {
			super()
		}
		readonly event_name: string = "游戏结束事件"
		readonly autoForward: boolean = true
	}
	export let 游戏失败:()=>void = ():void => {
		base.send_custom_event(new hwx_6151.游戏结束事件(((base.game) as unknown as base.Game), false));
	}
	export let 游戏胜利:()=>void = ():void => {
		base.send_custom_event(new hwx_6151.游戏结束事件(((base.game) as unknown as base.Game), true));
	}
	function _TRIG_死亡后暂停游戏_FUNC(this: void, 当前触发器: Trigger, e:base.EventUnitDie) {
		if (((e.unit == hwx_6151.主玩家.get_hero()))) {
			base.timer_sleep(5);
			hwx_6151.游戏失败();
			base.timer_sleep(2);
			base.pause_game();
		}
	}
	export let 死亡后暂停游戏 = base.trigger_new(_TRIG_死亡后暂停游戏_FUNC, [], false, undefined, true)
	//以下为转发事件
	//为触发器添加事件
	关卡刷怪.add_event_common({ obj: hwx_6151.主玩家, event_name: "玩家-连入" })
	游戏开始时弹出初始选择.add_event_common({ obj: hwx_6151.主玩家, event_name: "玩家-连入" })
	升级时弹出选择.add_event_common({ obj: ((base.any_unit) as unknown as base.PUnitAny), event_name: "单位-升级" })
	选择后继续游戏.add_event_common({ obj: ((base.game) as unknown as base.Game), event_name: "玩家-点击关闭n选1" })
	死亡后暂停游戏.add_event_common({ obj: ((base.any_unit) as unknown as base.PUnitAny), event_name: "单位-死亡" })
}
