function onBeatHit()
    if curBeat == 200 then
        doTweenAlpha("cHTa", "camHUD", 0, 0.25, "")
    end
    if curBeat == 262 then
        setProperty("camGame.visible", false, false) setProperty("camOther.visible", false, false)
    end
    if curBeat == 264 then
        doTweenAlpha("cHTa", "camHUD", 1, 0.25, "")
        setProperty("camGame.visible", true, false) setProperty("camOther.visible", true, false)
        cameraFlash("camOther", "FF0000", 0.1, nil)
    end
    if curBeat == 472 then
        setProperty("camGame.visible", false) cameraFlash("hud", "FF0000", 0.5, nil)
        setProperty("healthBarBG.visible", false)
        setProperty("healthBar.visible", false)
        setProperty("iconP1.visible", false)
        setProperty("iconP2.visible", false)
        setProperty("timeTxtN.visible", false)
        setProperty("cautionTxt.alpha", 0)
        setProperty("firstYou.visible", false)
        for i = 0, 4 do
            setPropertyFromGroup('opponentStrums', i, 'visible', false)
        end
        for i = 0, 4 do
            setPropertyFromGroup('playerStrums', i, 'visible', false)
        end
    end
end

function onCreatePost()
    --setTextColor("scoreTxt", "FF0000")
    setPropertyFromClass('GameOverSubstate', 'loopSound', 'gameOverSM');
end

function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
    if not isSustainNote then triggerEvent("Add Camera Zoom", 0.015, 0.03) end
end

function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
    if not isSustainNote then triggerEvent("Add Camera Zoom", 0.015, 0.03) end
end