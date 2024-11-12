-- TODO: add keys to up/down money amount to cheat
-- TODO: implement multiplayer farmId verifications (Not working on fs25: g_currentMission.player.farmId)
-- if g_currentMission.missionDynamicInfo.isMultiplayer and g_currentMission.player.farmId == FarmManager.SPECTATOR_FARM_ID then

--
-- MoneyCheat_KingMods
--
-- Author: KingMods
-- Date: 12.11.2024
-- Version: 1.0.0.0
--
-- https://www.kingmods.net/
--

MoneyCheat = {}

function MoneyCheat:keyEvent(unicode, sym, modifier, isDown)
    if bitAND(modifier, Input.MOD_LCTRL) > 0 and bitAND(modifier, Input.MOD_LALT) > 0 and Input.isKeyPressed(Input.KEY_0) then
        g_currentMission:consoleCommandCheatMoney(1000000)
    end
end

addModEventListener(MoneyCheat)
