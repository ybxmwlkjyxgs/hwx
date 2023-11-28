declare module hwx_6151 {
	export let 将小数处理为百分比字符串:(小数:number)=>string
	//以下为转发事件
	export class 游戏结束事件 extends TriggerEvent{
		obj: unknown
		is_win: boolean
		constructor(obj:unknown, is_win:boolean)
		readonly event_name: string
		readonly autoForward: boolean
	}
	function _TRIG_更新等级文本_FUNC(this: void, 当前触发器: Trigger, e:base.单位属性变化) {
		let 等级文本Label: _OBJ__gui_ctrl_label | undefined = base.gui_get_part_as<_OBJ__gui_ctrl_label>(base.gui_get_main_page(), "等级文本");
		let 取整后等级: number | undefined = 0;
		if ((((e.unit == base.player_local().get_hero()) && (e.property == 单位属性["等级"])))) {
			log.debug(base.force_as<string>(e.value_n));
			取整后等级 = base.math.floor(e.value_n);
			等级文本Label.text = base.force_as<string>(取整后等级);
		}
	}
	export let 更新等级文本: Trigger
	function _TRIG_更新经验条_FUNC(this: void, 当前触发器: Trigger, e:base.单位属性变化) {
		let 经验条填充Panel: _OBJ__gui_ctrl_panel | undefined = base.gui_get_part_as<_OBJ__gui_ctrl_panel>(base.gui_get_main_page(), "经验条填充");
		let 经验条百分比Label: _OBJ__gui_ctrl_label | undefined = base.gui_get_part_as<_OBJ__gui_ctrl_label>(base.gui_get_main_page(), "经验条文本");
		let 当前等级经验百分比: number | undefined = 0;
		let 经验值百分比: string | undefined = "字符串";
		if ((((e.unit == base.player_local().get_hero()) && (e.property == 单位属性["经验"])))) {
			当前等级经验百分比 = (base.player_local().get_hero().get(单位属性["剩余经验"]) / base.player_local().get_hero().get(单位属性["升级所需经验"]));
			log.debug("当前经验百分比是", base.force_as<string>(当前等级经验百分比));
			if (((当前等级经验百分比 == 0))) {
				经验条填充Panel.layout.grow_width = 0.01;
				经验条百分比Label.text = "EXP：0%";
			} else {
				经验条填充Panel.layout.grow_width = 当前等级经验百分比;
				经验值百分比 = hwx_6151.将小数处理为百分比字符串(当前等级经验百分比);
				经验条百分比Label.text = "EXP：".concat(base.force_as<string>(经验值百分比));
			}
		}
	}
	export let 更新经验条: Trigger
	function _TRIG_更新血条_FUNC(this: void, 当前触发器: Trigger, e:base.单位属性变化) {
		let 血条填充Panel: _OBJ__gui_ctrl_panel | undefined = base.gui_get_part_as<_OBJ__gui_ctrl_panel>(base.gui_get_main_page(), "血条填充");
		let 血量百分比: number | undefined = 1;
		if ((((e.unit == base.player_local().get_hero()) && (e.property == 单位属性["生命"])))) {
			血量百分比 = (e.value_n / base.player_local().get_hero().get(单位属性["生命上限"]));
			if (((血量百分比 == 0))) {
				血条填充Panel.layout.grow_width = 0.001;
			} else {
				血条填充Panel.layout.grow_width = 血量百分比;
			}
		}
	}
	export let 更新血条: Trigger
	function _TRIG_游戏结束时显示界面_FUNC(this: void, 当前触发器: Trigger, e:游戏结束事件) {
		let 游戏结束文字: _OBJ__gui_ctrl_label = base.gui_get_part_as<_OBJ__gui_ctrl_label>(base.gui_get_main_page(), "游戏结束文字");
		let 游戏结束面板: _OBJ__gui_ctrl_panel = base.gui_get_part_as<_OBJ__gui_ctrl_panel>(base.gui_get_main_page(), "游戏结束面板");
		if (true) {
			if (((e.is_win == true))) {
				游戏结束文字.text = "游戏结束！";
			} else {
				游戏结束文字.text = "你输了！";
			}
			游戏结束面板.show = true;
		}
	}
	export let 游戏结束时显示界面: Trigger
	function _TRIG_经验条_FUNC(this: void, 当前触发器: Trigger, e:base.游戏开始 | base.玩家改变英雄 | base.单位属性变化) {
		let 主控单位: Unit | undefined = base.player_local().get_hero();
		let 经验条: _OBJ_gameui_gui_ctrl_progress = base.gui_get_part_as<_OBJ_gameui_gui_ctrl_progress>(base.gui_get_main_page(), "经验条");
		if (((主控单位 != undefined))&&((经验条 != undefined))) {
			经验条.value = 主控单位.get(单位属性["剩余经验"]);
			经验条.value_max = 主控单位.get(单位属性["升级所需经验"]);
		}
	}
	export let 经验条: Trigger
}
