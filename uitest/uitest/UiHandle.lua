
--This function name and notes cannot be modified
--@@funCfg: <joinUs, exist>
function joinUs()
------------USER CODE DATA--------------
lvgl.style_set_bg_color(Style_LvglButton2_1, lvgl.STATE_DEFAULT, lvgl.color_hex(0xFF0000))
lvgl.style_set_value_str(Style_LvglButton2_1, lvgl.STATE_DEFAULT, "逗你的，还是手机扫码加群一起玩耍吧")
lvgl.style_set_value_color(Style_LvglButton2_1, lvgl.STATE_DEFAULT, lvgl.color_hex(0x1A1A1A))
lvgl.obj_add_style(ScreenA.LvglButton2.self, lvgl.BTN_PART_MAIN, Style_LvglButton2_1)
------------USER CODE DATA--------------
end


--This function name and notes cannot be modified
--@@funCfg: <reset, exist>
function reset()
------------USER CODE DATA--------------
lvgl.style_set_bg_color(Style_LvglButton2_1, lvgl.STATE_DEFAULT, lvgl.color_hex(0x0088FF))
lvgl.style_set_value_str(Style_LvglButton2_1, lvgl.STATE_DEFAULT, "Hello LuatOS UI")
lvgl.obj_add_style(ScreenA.LvglButton2.self, lvgl.BTN_PART_MAIN, Style_LvglButton2_1)
lvgl.style_set_value_color(Style_LvglButton2_1, lvgl.STATE_DEFAULT, lvgl.color_hex(0xFFFFFF))
------------USER CODE DATA--------------
end