-- file: setup.lua
local module = {}

pin = config.dht.gpio

local function dht_read()
	--print("dht_read")
	status, temp, humi, temp_dec, humi_dec = dht.read(pin)
	if status == dht.OK then
		-- Integer firmware using this example
		print(string.format("DHT Temperature:%d.%03d;Humidity:%d.%03d\r\n",
			  math.floor(temp),
			  temp_dec,
			  math.floor(humi),
			  humi_dec
		))

		-- Float firmware using this example
		print("DHT Temperature:"..temp..";".."Humidity:"..humi)

	elseif status == dht.ERROR_CHECKSUM then
		print( "DHT Checksum error." )
	elseif status == dht.ERROR_TIMEOUT then
		print( "DHT timed out." )
	end
end


local function dht_start()  
	tmr.alarm(1, config.dht.interval, 1, dht_read)
end

function module.start()  
  print("Starting DHT sensor...")
  dht_start()
end

return module  
