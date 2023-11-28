local ____lualib = base.tsc
local __TS__TypeReference = ____lualib.__TS__TypeReference
local __TS__Keyword = ____lualib.__TS__Keyword
local __TS__Class = ____lualib.__TS__Class
local __TS__ClassExtends = ____lualib.__TS__ClassExtends
local __TS__SuperTypeArgumentsFuncWrapper = ____lualib.__TS__SuperTypeArgumentsFuncWrapper
local __TS__Class2 = ____lualib.__TS__Class2
Point = base.tsc.CLASSES.Point or __TS__Class2("Point")
Unit = base.tsc.CLASSES.Unit or __TS__Class2("Unit")
Vector = base.tsc.CLASSES.Vector or __TS__Class2("Vector")
Slot = base.tsc.CLASSES.Slot or __TS__Class2("Slot")
Camera = base.tsc.CLASSES.Camera or __TS__Class2("Camera")
DataCache = base.tsc.CLASSES.DataCache or __TS__Class2("DataCache")
YPR旋转 = base.tsc.CLASSES.YPR旋转 or __TS__Class2("YPR旋转")
EffectParamShared = base.tsc.CLASSES.EffectParamShared or __TS__Class2("EffectParamShared")
EffectParam = base.tsc.CLASSES.EffectParam or __TS__Class2("EffectParam")
Target = base.tsc.CLASSES.Target or __TS__Class2("Target")
ScreenPos = base.tsc.CLASSES.ScreenPos or __TS__Class2("ScreenPos")
Actor = base.tsc.CLASSES.Actor or __TS__Class2("Actor")
TriggerEvent = base.tsc.CLASSES.TriggerEvent or __TS__Class2("TriggerEvent")
TriggerParamTable = base.tsc.CLASSES.TriggerParamTable or __TS__Class2("TriggerParamTable")
Player = base.tsc.CLASSES.Player or __TS__Class2("Player")
Skill = base.tsc.CLASSES.Skill or __TS__Class2("Skill")
Buff = base.tsc.CLASSES.Buff or __TS__Class2("Buff")
Timer = base.tsc.CLASSES.Timer or __TS__Class2("Timer")
Item = base.tsc.CLASSES.Item or __TS__Class2("Item")
Trigger = base.tsc.CLASSES.Trigger or __TS__Class2("Trigger")
Coroutine = base.tsc.CLASSES.Coroutine or __TS__Class2("Coroutine")
IEventNotify = base.tsc.CLASSES.IEventNotify or __TS__Class2("IEventNotify")
Present = base.tsc.CLASSES.Present or __TS__Class2("Present")
Array = base.tsc.CLASSES.Array or __TS__Class2("Array")
hwx_6151 = hwx_6151 or ({})
do
    local function _TRIG_经验条_FUNC(当前触发器, e)
        local 主控单位 = base.player_local():get_hero()
        local 经验条 = base.gui_get_part_as(
            __TS__TypeReference(_OBJ_gameui_gui_ctrl_progress, {}),
            base.gui_get_main_page(),
            "经验条"
        )
        if 主控单位 ~= nil and 经验条 ~= nil then
            经验条.value = 主控单位:get("剩余经验")
            经验条.value_max = 主控单位:get("升级所需经验")
        end
    end
    hwx_6151.经验条 = base.trigger_new(
        _TRIG_经验条_FUNC,
        {},
        false,
        nil,
        true
    )
    local function _TRIG_游戏结束时显示界面_FUNC(当前触发器, e)
        local 游戏结束文字 = base.gui_get_part_as(
            __TS__TypeReference(_OBJ__gui_ctrl_label, {}),
            base.gui_get_main_page(),
            "游戏结束文字"
        )
        local 游戏结束面板 = base.gui_get_part_as(
            __TS__TypeReference(_OBJ__gui_ctrl_panel, {}),
            base.gui_get_main_page(),
            "游戏结束面板"
        )
        if true then
            if e.is_win == true then
                游戏结束文字.text = "游戏结束！"
            else
                游戏结束文字.text = "你输了！"
            end
            游戏结束面板.show = true
        end
    end
    hwx_6151.游戏结束时显示界面 = base.trigger_new(
        _TRIG_游戏结束时显示界面_FUNC,
        {},
        false,
        nil,
        true
    )
    hwx_6151.将小数处理为百分比字符串 = function(____, 小数)
        local 百分比字符串 = "字符串"
        local 百分比处理 = 0
        if 小数 == 0 then
            百分比字符串 = "0%"
        else
            百分比处理 = 小数 * 100
            百分比处理 = base.math.floor(百分比处理)
            百分比字符串 = table.concat({
                base.force_as(
                    __TS__Keyword("string"),
                    百分比处理
                ),
                "%"
            })
        end
        return 百分比字符串
    end
    local function _TRIG_更新等级文本_FUNC(当前触发器, e)
        local 等级文本Label = base.gui_get_part_as(
            __TS__TypeReference(_OBJ__gui_ctrl_label, {}),
            base.gui_get_main_page(),
            "等级文本"
        )
        local 取整后等级 = 0
        if e.unit == base.player_local():get_hero() and e.property == "等级" then
            log.debug(base.force_as(
                __TS__Keyword("string"),
                e.value_n
            ))
            取整后等级 = base.math.floor(e.value_n)
            等级文本Label.text = base.force_as(
                __TS__Keyword("string"),
                取整后等级
            )
        end
    end
    hwx_6151.更新等级文本 = base.trigger_new(
        _TRIG_更新等级文本_FUNC,
        {},
        false,
        nil,
        true
    )
    local function _TRIG_更新血条_FUNC(当前触发器, e)
        local 血条填充Panel = base.gui_get_part_as(
            __TS__TypeReference(_OBJ__gui_ctrl_panel, {}),
            base.gui_get_main_page(),
            "血条填充"
        )
        local 血量百分比 = 1
        if e.unit == base.player_local():get_hero() and e.property == "生命" then
            血量百分比 = e.value_n / base.player_local():get_hero():get("生命上限")
            if 血量百分比 == 0 then
                血条填充Panel.layout.grow_width = 0.001
            else
                血条填充Panel.layout.grow_width = 血量百分比
            end
        end
    end
    hwx_6151.更新血条 = base.trigger_new(
        _TRIG_更新血条_FUNC,
        {},
        false,
        nil,
        true
    )
    local function _TRIG_更新经验条_FUNC(当前触发器, e)
        local 经验条填充Panel = base.gui_get_part_as(
            __TS__TypeReference(_OBJ__gui_ctrl_panel, {}),
            base.gui_get_main_page(),
            "经验条填充"
        )
        local 经验条百分比Label = base.gui_get_part_as(
            __TS__TypeReference(_OBJ__gui_ctrl_label, {}),
            base.gui_get_main_page(),
            "经验条文本"
        )
        local 当前等级经验百分比 = 0
        local 经验值百分比 = "字符串"
        if e.unit == base.player_local():get_hero() and e.property == "经验" then
            当前等级经验百分比 = base.player_local():get_hero():get("剩余经验") / base.player_local():get_hero():get("升级所需经验")
            log.debug(
                "当前经验百分比是",
                base.force_as(
                    __TS__Keyword("string"),
                    当前等级经验百分比
                )
            )
            if 当前等级经验百分比 == 0 then
                经验条填充Panel.layout.grow_width = 0.01
                经验条百分比Label.text = "EXP：0%"
            else
                经验条填充Panel.layout.grow_width = 当前等级经验百分比
                经验值百分比 = hwx_6151:将小数处理为百分比字符串(当前等级经验百分比)
                经验条百分比Label.text = table.concat({
                    "EXP：",
                    base.force_as(
                        __TS__Keyword("string"),
                        经验值百分比
                    )
                })
            end
        end
    end
    hwx_6151.更新经验条 = base.trigger_new(
        _TRIG_更新经验条_FUNC,
        {},
        false,
        nil,
        true
    )
    hwx_6151.游戏结束事件 = __TS__Class()
    local 游戏结束事件 = hwx_6151.游戏结束事件
    游戏结束事件.name = "游戏结束事件"
    __TS__ClassExtends(
        游戏结束事件,
        TriggerEvent,
        function()
            return {}
        end
    )
    function 游戏结束事件.prototype.____constructor(self, obj, is_win)
        __TS__SuperTypeArgumentsFuncWrapper(游戏结束事件, {}, TriggerEvent.prototype.____constructor)(self)
        self.obj = obj
        self.is_win = is_win
        self.event_name = "游戏结束事件"
        self.autoForward = false
    end
    hwx_6151.经验条:add_event_common({obj = base.game, event_name = "游戏-开始"})
    hwx_6151.经验条:add_event_common({obj = base.any_player, event_name = "玩家-改变英雄"})
    hwx_6151.经验条:add_event_common({obj = base.any_unit, event_name = "单位-属性变化"})
    hwx_6151.游戏结束时显示界面:add_event_common({obj = base.game, event_name = "游戏结束事件"})
    hwx_6151.更新等级文本:add_event_common({obj = base.any_unit, event_name = "单位-属性变化"})
    hwx_6151.更新血条:add_event_common({obj = base.any_unit, event_name = "单位-属性变化"})
    hwx_6151.更新经验条:add_event_common({obj = base.any_unit, event_name = "单位-属性变化"})
end
