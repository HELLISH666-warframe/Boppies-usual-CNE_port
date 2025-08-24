function onBeatHit()
    if curBeat == 0 or curBeat == 132 or curBeat == 492 then
        cameraFlash("camHUD", "000000", 1, true)
    end
    if curBeat == 32 or curBeat == 196 then
        cameraFlash("camHUD", "FFFFFF", 0.5, true)
        setProperty("camGame.visible", false, false)
    end
    if curBeat == 36 or curBeat == 200 then
        cameraFlash("camHUD", "FFFFFF", 0.5, true)
        setProperty("camGame.visible", true, false)
    end
end

function onSongStart()
    cameraFlash("camHUD", "000000", 1, true)
end