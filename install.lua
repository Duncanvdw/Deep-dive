local startupBegin = http.get("").readAll()
local chestMonitorBegin = http.get("https://github.com/Duncanvdw/Deep-dive/blob/main/chest_monitor.lua").readAll()

local startupFile = fs.open("startup.lua", "w")
startupFile.write(startupBegin)
startupFile.close()

local chestMonitorFile = fs.open("chest_monitor.lua", "w")
chestMonitorFile.write(chestMonitorBegin)
chestMonitorFile.close()