
---@diagnostic disable: undefined-global
--必须在这个位置定义PROJECT和VERSION变量
--PROJECT：ascii string类型，可以随便定义，只要不使用,就行
--VERSION：ascii string类型，如果使用Luat物联云平台固件升级的功能，必须按照"X.X.X"定义，X表示1位数字；否则可随便定义
PROJECT = "UI"
VERSION = "2.0.0"

--加载日志功能模块，并且设置日志输出等级
--如果关闭调用log模块接口输出的日志，等级设置为log.LOG_SILENT即可
require "log"
LOG_LEVEL = log.LOGLEVEL_TRACE


require "sys"
require "pins"
require "net"
require "LCD"
        
loader = lvgl.font_load
spi.setup(spi.SPI_1,1,1,8,1000000,1)
font_spi = spi.SPI_1
font_bpp = 2

thick_table = {
    40, 46, 48, 54, 54, 54, 54, 54, 54, 56, 60, 72, 76, 80, 82, 86, 90, 94, 96, 102, 102, 104, 106, 108, 110, 112, 114, 116, 
    118, 120, 124, 126, 128, 130, 136, 140, 150, 160, 170, 180
}

fonTable = {
    light = {},
    normal = {},
    heavy = {}
}

local function normal(s)
    if s % 2 == 1 then s = s - 1 end
    return thick_table[(s - 16) / 2 + 1]
end

local function light(s)
    if s >= 48 then return normal(s) - 25
    else return normal(s) - 20 end
end

local function heavy(s)
    if s >= 48 then return normal(s) + 25
    else return normal(s) + 20 end
end


local function font_load(...)
    args = {...}
    if type(args[1]) == 'string' then
        if args[2] == nil then 
            return loader(args[1]) -- 加载文件
        else
            -- 设计器
            if (fonTable[args[1]][args[2]]) then
                print("=====font_load=====", args[1], args[2])
                return fonTable[args[1]][args[2]]
            end

            if string.find(args[1], 'light') then
                fonTable['light'][args[2]] = loader(font_spi, args[2], font_bpp, light(args[2]))
            elseif string.find(args[1], 'normal') then
                fonTable['normal'][args[2]] = loader(font_spi, args[2], font_bpp, normal(args[2]))
            elseif string.find(args[1], 'heavy') then
                fonTable['heavy'][args[2]] = loader(font_spi, args[2], font_bpp, heavy(args[2]))
            end
            return fonTable[args[1]][args[2]]
        end
    else
        return loader(...) -- 加载矢量字库
    end
end

lvgl.font_load = font_load
require "UiDesign"
require "UiTp"

local function input()
    if lvgl.indev_get_emu_touch ~= nil then
    function keycb()
        menu, home, back = lvgl.indev_get_emu_key()
        if menu > 0 then
        return
        end
        if home > 0 then
        return
        end
        if back > 0 then
        return
        end
    end
    keycb()
    keycode,state=lvgl.indev_get_emu_keycode()
    return lvgl.indev_get_emu_touch()
    end
end

function demo_WindowInit()
    lvglUiInitial()
end


local function init()
    lvgl.init(function() end , UiTp.input)
    demo_WindowInit()
end

sys.taskInit(init, nil)

--启动系统框架
sys.init(0, 0)
sys.run()