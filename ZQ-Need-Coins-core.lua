local function onEvent(self, event, rollID, ...)
    if GetZoneText() ~= "Zul'Gurub" then
        -- Only want to run this in ZG
        return
    end
    texture, name = GetLootRollItemInfo(rollID)
    if(string.find(name," Coin") or string.find(name,"Hakkari Bijou")) then
        RollOnLoot(arg1, 1)
    end
end

frame = CreateFrame("Frame");
frame:SetScript("OnEvent", onEvent);
frame:RegisterEvent("START_LOOT_ROLL")
