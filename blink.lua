-- file: blink.lua
local module = {}  
i = 0
gpio.mode(config.blink.gpio, gpio.OUTPUT)

local function blink()
	if i % 2 == 0 then 
		gpio.write(config.blink.gpio, gpio.LOW)
	else
		gpio.write(config.blink.gpio, gpio.HIGH)
	end
	i = i + 1
end

local function blink_start()
	tmr.alarm(0, config.blink.interval, 1, blink) --A timer, which used to run the following program
end
function module.start()  
	print("Start blinking...")
	blink_start()
end

return module
