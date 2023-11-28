declare module hwx_6151 {
	export let 主玩家: Player;
	export let 关卡配置表Id: IdPreset<"level_id">;
	export let 刷怪范围: number;
	export let 地图坐标最大值: number;
	export let 地图坐标最小值: number;
	export let 敌人玩家: Player;
	export let 英雄初始技能奖励表Id: IdPreset<"loot_pool_id">;
	export let 英雄技能奖励表Id: IdPreset<"loot_pool_id">;
	export let 单个刷怪:(刷怪表:_OBJ__spawner_Spawner)=>void
	export let 单波刷怪:(波次表:_OBJ__wave_Wave)=>void
	export let 游戏失败:()=>void
	export let 游戏胜利:()=>void
	export class 游戏结束事件 extends TriggerEvent{
		obj: base.Game
		is_win: boolean
		constructor(obj:base.Game, is_win:boolean)
		readonly event_name: string
		readonly autoForward: boolean
	}
	//以下为转发事件
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
	export let 关卡刷怪: Trigger
	function _TRIG_升级时弹出选择_FUNC(this: void, 当前触发器: Trigger, e:base.EventUnitLevelUp) {
		if (((e.unit == hwx_6151.主玩家.get_hero()))) {
			log.debug("主控升级，弹出选择");
			base.pause_game();
			smallcard_choose_one.open_n_pick_1(hwx_6151.主玩家.get_hero(), 3, hwx_6151.英雄技能奖励表Id);
		}
	}
	export let 升级时弹出选择: Trigger
	function _TRIG_死亡后暂停游戏_FUNC(this: void, 当前触发器: Trigger, e:base.EventUnitDie) {
		if (((e.unit == hwx_6151.主玩家.get_hero()))) {
			base.timer_sleep(5);
			hwx_6151.游戏失败();
			base.timer_sleep(2);
			base.pause_game();
		}
	}
	export let 死亡后暂停游戏: Trigger
	function _TRIG_游戏开始时弹出初始选择_FUNC(this: void, 当前触发器: Trigger, e:base.EventPlayerJoin) {
		if (((e.is_reconnect == false))) {
			base.pause_game();
			smallcard_choose_one.open_n_pick_1(hwx_6151.主玩家.get_hero(), 3, hwx_6151.英雄初始技能奖励表Id);
		}
	}
	export let 游戏开始时弹出初始选择: Trigger
	function _TRIG_选择后继续游戏_FUNC(this: void, 当前触发器: Trigger, e:smallcard_choose_one.玩家点击关闭n选1) {
		let 玩家: Player = e.player;
		if (((玩家 == hwx_6151.主玩家))) {
			base.unpause_game();
		}
	}
	export let 选择后继续游戏: Trigger
}
