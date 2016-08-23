-- in memory of one of the greats: PallyPower by Aznamir

local function OnEvent(self, event, ...)
	if event == "ADDON_LOADED" then
		if (select(1,...)) == "GreaterPallyPower" then
			GreaterPallyPower:UnregisterEvent("ADDON_LOADED")
		end
	end
end		
		
GreaterPallyPower = CreateFrame("Frame")
GreaterPallyPower:SetScript("OnEvent", OnEvent)
GreaterPallyPower:RegisterEvent("ADDON_LOADED")
