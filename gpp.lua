-- In memory of one of the greats: PallyPower by Aznamir

-- bail early
if (select(2,UnitClass("player"))) ~= "PALADIN" then DisableAddOn("GreaterPallyPower") return end

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
