function print_inventory_on_monitor(chest, monitor)
    if not chest and monitor then
    end

    monitor.clear()
    local inventory = chest.list()
    local yPos = 1

    for slot, item in pairs(inventory) do
        local itemName = string.match(item.name, "[^:]+$")
        monitor.setCursorPos(1, yPos)
        monitor.write(item.count .. " x " .. itemName)
        yPos = yPos + 1
    end
end

while true do
    local monitor = peripheral.find("monitor")
    local chest = peripheral.find("minecraft:chest")

    print_inventory_on_monitor(chest, monitor)

    sleep(10)
end