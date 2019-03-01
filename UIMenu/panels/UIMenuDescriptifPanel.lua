---@type table
UIMenuDescriptifPanel = setmetatable({}, UIMenuDescriptifPanel)

---@type table
UIMenuDescriptifPanel.__index = UIMenuDescriptifPanel

---@type table
---@return string
UIMenuDescriptifPanel.__call = function()
    return "UIMenuPanel", "UIMenuDescriptifPanel"
end

---@type string
local LoremIpsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

---New
---@return table
---@public
function UIMenuDescriptifPanel.New()
    _UIMenuDescriptifPanel = {
        Background = Sprite.New("commonmenu", "gradient_bgd", 0, 0, 431, 100),
        Description = UIResText.New(Text or LoremIpsum, 0, 0, 0.35, 255, 255, 255, 255, 0, "Right"),
        ParentItem = nil,
    }
    return setmetatable(_UIMenuDescriptifPanel, UIMenuDescriptifPanel)
end

---SetParentItem
---@param Item table
---@return table
function UIMenuDescriptifPanel:SetParentItem(Item)
    if Item() == "UIMenuItem" then
        self.ParentItem = Item
    else
        return self.ParentItem
    end
end

---Position
---@param Y number
---@return nil
---@public
function UIMenuDescriptifPanel:Position(Y)
    if tonumber(Y) then
        local ParentOffsetX = self.ParentItem:Offset().X, self.ParentItem:SetParentMenu().WidthOffset
        self.Background:Position(ParentOffsetX, Y)
        self.Description:Position(ParentOffsetX, Y)
    end
end

---Draw
---@return nil
---@public
function UIMenuDescriptifPanel:Draw()
    self.Background:Draw()
    self.Description:Draw()
end