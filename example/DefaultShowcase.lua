ketchup = false
dish = "Banana"
quantity = 1
_menuPool = NativeUI.CreatePool()

mainMenu = NativeUI.CreateMenu("Native UI", "~b~NATIVEUI SHOWCASE", nil, nil, nil, nil, nil, 255, 255, 255, 210)
_menuPool:Add(mainMenu)

mainMenu:AddInstructionButton({
    [1] = GetControlInstructionalButton(2, 166, 0),
    [2] = "EDIT ITEM COUNT",
})

mainMenu:AddInstructionButton({
    [1] = GetControlInstructionalButton(2, 167, 0),
    [2] = "RELOAD REALTIME UI",
})

function RealtimeUpdateUI(menu)
    for i = 1, 69, 1 do
        menu:AddItem(NativeUI.CreateItem("PageFiller - " .. i, "Sample description that takes more than one line. Moreso, it takes way more t"))
    end
end

RealtimeUpdateUI(mainMenu)
_menuPool:RefreshIndex()

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        _menuPool:ProcessMenus()
        if IsControlJustPressed(1, 51) then
            mainMenu:Visible(not mainMenu:Visible())
        end
    end
end)
