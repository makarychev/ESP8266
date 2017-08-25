-- file : config.lua
local module = {}

module.SSID = {}  
module.SSID["WIFI_NAME"] = "WIFI_PASSWORD"

module.mqtt.HOST = "broker.example.com"  
module.mqtt.PORT = 1884  
module.mqtt.ID = node.chipid()

module.mqtt.ENDPOINT = "nodemcu/"  
module.mqtt.ping.interval = 1000

module.blink.gpio = 8
module.blink.interval = 500


return module
