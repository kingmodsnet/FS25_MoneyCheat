--
-- MoneyCheat_KingMods
--
-- Author: KingMods
-- Contributors: Kaymara
-- Date: 20.11.2024
-- Version: 1.1.0.0
--
-- https://www.kingmods.net/
--

MoneyCheat = {}

function MoneyCheat:keyEvent(unicode, sym, modifier, isDown)
    if bitAND(modifier, Input.MOD_LCTRL) > 0 and bitAND(modifier, Input.MOD_LALT) > 0 then
        if Input.isKeyPressed(Input.KEY_0) then
            -- Add money
            g_currentMission:consoleCommandCheatMoney(1000000)
        elseif Input.isKeyPressed(Input.KEY_9) then
            -- Remove money
            g_currentMission:consoleCommandCheatMoney(-1000000)
        end
    end
end

addModEventListener(MoneyCheat)
