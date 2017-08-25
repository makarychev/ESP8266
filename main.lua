
-- file : init.lua
app = require("application")  
config = require("config")  
setup = require("setup")
blink = require("blink")
dht_info = require("dht_info")

setup.start()
blink.start()
dht_info.start()

--i = 0
--gpio.mode(8,gpio.OUTPUT)

--tmr.alarm(0,500,1,function() --A timer, which used to run the following program
--	if i % 2 == 0 then 
--		gpio.write(8, gpio.LOW)
--	else
--		gpio.write(8, gpio.HIGH)
--	end
--	i = i + 1
--end)