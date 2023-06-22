----------------------------------------------------------------------------
-- 1. This file automatically generates code for the LuatOS's UI designer
-- 2. In case of accident, modification is strictly prohibited
----------------------------------------------------------------------------

--Import event file
require "UiHandle"

local function objectHide()
	local o = {}
	local tSelf = {}
	setmetatable(o, tSelf)
	tSelf.__index = tSelf
	tSelf.__tostring = function(j)
		return j.self
	end
	tSelf.__tocall = function(j)
		return j.cb
	end
	tSelf.self = nil
	tSelf.cb = function(e) end
	return o
end

ScreenA = 
{
	create = nil, 
	free = nil,
	contFather_ScreenA = nil,
	LvglSwitch1 = objectHide(),
	LvglQrcode1 = objectHide(),
}
--This is default style of cont which border is invisible
lvgl_UiDesigner_DefaultContStyle = lvgl.style_t()
lvgl.style_init(lvgl_UiDesigner_DefaultContStyle)
lvgl.style_set_radius(lvgl_UiDesigner_DefaultContStyle, (lvgl.STATE_DEFAULT or LV_STATE_FOCUSED or LV_STATE_PRESSED), 0)
lvgl.style_set_border_opa(lvgl_UiDesigner_DefaultContStyle, (lvgl.STATE_DEFAULT or LV_STATE_FOCUSED or LV_STATE_PRESSED), 0)

local function lvgl_UiDesigner_DefOutCb(o, e, output)
	if e == lvgl.EVENT_CLICKED then
		lvgl.obj_set_hidden(output, false)
		lvgl.keyboard_set_textarea(output, o)
	elseif e == lvgl.EVENT_DEFOCUSED then
		lvgl.obj_set_hidden(output, true)
	elseif e == lvgl.EVENT_VALUE_CHANGED then
		sys.publish("UI_EVENT_IND", o, e)
	end
end

local function lvgl_UiDesigner_DefInCb(o, e)
	lvgl.keyboard_def_event_cb(o, e)
	if e == lvgl.EVENT_CANCEL or e == lvgl.EVENT_APPLY then
		lvgl.obj_set_hidden(o, true)
	end
end

----------------------------------------------------------------------------
--The following is the content of screen: ScreenA
---------------------------------------------------------------------------
ScreenA.create = function()
	ScreenA.contFather_ScreenA = lvgl.cont_create(lvgl.scr_act(), nil)
	lvgl.obj_set_size(ScreenA.contFather_ScreenA, 512, 1024)
	lvgl.obj_align(ScreenA.contFather_ScreenA, nil, lvgl.ALIGN_IN_TOP_LEFT, 0, 0)
	lvgl.obj_add_style(ScreenA.contFather_ScreenA, lvgl.CONT_PART_MAIN, lvgl_UiDesigner_DefaultContStyle)

	--This is the SWITCH_PART_BG's style of ScreenA.LvglSwitch1
	Style_LvglSwitch1_1 = lvgl.style_t()
	lvgl.style_init(Style_LvglSwitch1_1)

	--This is the SWITCH_PART_INDIC's style of ScreenA.LvglSwitch1
	Style_LvglSwitch1_2 = lvgl.style_t()
	lvgl.style_init(Style_LvglSwitch1_2)

	--This is the SWITCH_PART_KNOB's style of ScreenA.LvglSwitch1
	Style_LvglSwitch1_3 = lvgl.style_t()
	lvgl.style_init(Style_LvglSwitch1_3)

	--This is the base code of ScreenA.LvglSwitch1
	ScreenA.LvglSwitch1.self = lvgl.switch_create(ScreenA.contFather_ScreenA, nil)
	lvgl.obj_set_size(ScreenA.LvglSwitch1.self, 492, 228)
	lvgl.obj_set_click(ScreenA.LvglSwitch1.self, true)
	lvgl.switch_set_anim_time(ScreenA.LvglSwitch1.self, 1000)
	lvgl.obj_align(ScreenA.LvglSwitch1.self, ScreenA.contFather_ScreenA, lvgl.ALIGN_IN_TOP_LEFT, 7, 643)
	lvgl.obj_add_style(ScreenA.LvglSwitch1.self, lvgl.SWITCH_PART_BG, Style_LvglSwitch1_1)
	lvgl.obj_add_style(ScreenA.LvglSwitch1.self, lvgl.SWITCH_PART_INDIC, Style_LvglSwitch1_2)
	lvgl.obj_add_style(ScreenA.LvglSwitch1.self, lvgl.SWITCH_PART_KNOB, Style_LvglSwitch1_3)
	--This is to add callback function for ScreenA.LvglSwitch1
	--This is callBack function of ScreenA.LvglSwitch1
	local handleLvglSwitch1 = function(obj, e)
		ScreenA.LvglSwitch1.cb(e)
		ScreenA.LvglSwitch1.cb = function(e)
		end
	end
	lvgl.obj_set_event_cb(ScreenA.LvglSwitch1.self, handleLvglSwitch1)


	--This is the QRCODE_PART_MAIN's style of ScreenA.LvglQrcode1
	Style_LvglQrcode1_1 = lvgl.style_t()
	lvgl.style_init(Style_LvglQrcode1_1)
	lvgl.style_set_bg_color(Style_LvglQrcode1_1, lvgl.STATE_DEFAULT, lvgl.color_hex(0xFF0000))

	--This is the base code of ScreenA.LvglQrcode1
	ScreenA.LvglQrcode1.self = lvgl.qrcode_create(ScreenA.contFather_ScreenA, nil)
	lvgl.obj_set_size(ScreenA.LvglQrcode1.self, 247, 247)
	lvgl.obj_set_click(ScreenA.LvglQrcode1.self, true)
	lvgl.qrcode_set_txt(ScreenA.LvglQrcode1.self, "阿三大苏打")
	lvgl.obj_align(ScreenA.LvglQrcode1.self, ScreenA.contFather_ScreenA, lvgl.ALIGN_IN_TOP_LEFT, 127, 188)
	lvgl.obj_add_style(ScreenA.LvglQrcode1.self, lvgl.QRCODE_PART_MAIN, Style_LvglQrcode1_1)
end
ScreenA.free = function()
	lvgl.obj_del(ScreenA.contFather_ScreenA)
	ScreenA.contFather_ScreenA = nil
end


----------------------------------------------------------------------------
-----------------------This is the Initial of lvglGUI-----------------------
----------------------------------------------------------------------------
function lvglUiInitial()
	ScreenA.create()
end
