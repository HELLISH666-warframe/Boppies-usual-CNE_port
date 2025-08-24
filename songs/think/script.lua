local tic = 1
local letter = 1
local bruh = true
local alpha = true
local loosing = false
local pos = {190, 850}
local txt = {'one', 'two'}
local allshit = {'gray', 'layer'}
local anims = {'B', 'C', 'D', 'E', 'E'}
local assets = {'revealM', 'revealC', 'Alterlayer', 'Alterlayer2', 'Alterlayer3', 'black', 'eyes', 'markreveal', 'layerNORMAL', 'Alterlayer', 'cesarreveal', 'bighead', 'vintage'}

function IconFilterShit()
    setPropertyFromClass('GameOverSubstate', 'characterName', 'cesar')
    if downscroll then
        makeAnimatedLuaSprite('cIcon', 'boppieicons', 635, 15)
    else
        makeAnimatedLuaSprite('cIcon', 'boppieicons', 635, 580)
    end
    setObjectOrder('cIcon',getObjectOrder('iconP1')+1)
    setProperty('cIcon.y',getProperty('cIcon.y')-9)
    addAnimationByPrefix('cIcon', 'normal', 'normal', 24, true)
    addAnimationByPrefix('cIcon', 'los', 'los', 24, true)
    setObjectCamera('cIcon', 'camHud')
    addLuaSprite('cIcon', true)
    setProperty("cIcon.flipX", true, false)

    if getPropertyFromClass("ClientPrefs", "hideHud") == true then
        setProperty("cIcon.visible", false)
    end

    setObjectOrder('boyfriendGroup', getObjectOrder('dadGroup')-1)

    setProperty('cIcon.alpha', 0.8)
    setProperty('iconP1.visible', false)

    makeAnimatedLuaSprite('vintage', 'vintage', -200, -350)
    scaleObject('vintage', 3, 3)
    addAnimationByPrefix('vintage', 'idle', 'idle', 16, true)
    playAnim('vintage', 'idle', true)
    setBlendMode('vintage', 'shader')
    setObjectCamera('vintage', 'camHud')
    setProperty('vintage.alpha', 0.3)
    addLuaSprite('vintage', true)

    makeLuaSprite('light','thinkFrame',0,0)
    setScrollFactor('light', 0.0, 0.0)
    scaleObject("light", 1.1, 1.15)
    addLuaSprite('light',true)

    makeLuaSprite('light2','thinkFrame',0,0)
    setScrollFactor('light2', 0.0, 0.0)
    scaleObject("light2", 1.1, 1.15)
    addLuaSprite('light2',true)

end

function preCacheShit()
    for i = 1,#assets do
        precacheImage(assets[i])
    end
    precacheSound('boomend')
end

function onCreate()
    preCacheShit()
end

function onCreatePost()
    makeLuaText('mark', 'Dre...Bob', '424', 101, 90)
    setTextAlignment('mark', 'center')
    setTextSize('mark', '40')
    setObjectCamera('mark', 'camGame')
    setProperty('mark.alpha', 0.01)
    makeLuaText('cesar', 'Boppie', '424', 765, 90)
    setTextAlignment('cesar', 'center')
    setObjectCamera('cesar', 'camGame')
    setTextSize('cesar', '40')
    setProperty('cesar.alpha', 0.01)


    IconFilterShit()

    addLuaText('mark')
    addLuaText('cesar')

    --setBlendMode('vintage', 'darken')

    for i = 1,2 do
        makeLuaText('Victim'..i, 'victim ' .. txt[i], 324, pos[i], 100)
        setTextAlignment('Victim'..i, 'left')
        setObjectCamera('Victim'..i, 'camGame')
        setTextSize('Victim'..i, '40')
        setProperty('Victim'..i..'.alpha', 0.01)
        addLuaText('Victim'..i)

    end

    if boyfriendName == "boppieT human" then
        setProperty("dad.x", getProperty("dad.x") + 260) setProperty("dad.y", getProperty("dad.y") - 220)
        setProperty("boyfriend.x", getProperty("boyfriend.x") + 260) setProperty("boyfriend.y", getProperty("boyfriend.y") - 250)
        
    end

    debugPrint('You can switch between human and normal by changing the difficulty level!\nbtw, human is newer lol.', '', '', '', '')
end

function onUpdate(elapsed)
    local helth = getProperty('health')

    screenCenter("light", 'xy')
    screenCenter("light2", 'xy')

    if bruh == true then
        setProperty('gf.alpha', 0.01)
    end
    if alpha == true then
        for i = 0,7 do
            setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
        end
    end
    if helth > 2 then helth = 2 end

    setProperty('cIcon.x', 635 - 290 * (helth-1))

    if getProperty('health') < 0.5 and loosing == false then
        playAnim('cIcon', 'los')
        loosing = true
    elseif loosing == true and getProperty('health') >= 0.5 then
        playAnim('cIcon', 'normal')
        loosing = false
    end

    if loosing then
        setProperty('cIcon.angle', getRandomInt(-10, 10))
    else
        setProperty('cIcon.angle', 0)
    end

    if mustHitSection == false then
        triggerEvent('Camera Follow Pos',420,300)
    else
        triggerEvent('Camera Follow Pos',420,000)
    end

end

function onSongStart()
    for i = 1,2 do
        doTweenAlpha('appear'..i, 'Victim'..i, 1, 1, 'linear')
        setObjectCamera('Victim', 'camgame')
    end

    runTimer('dissAppear', 2.0)
    runTimer('nameOneAppear', 4.0)
    runTimer('nameTwoAppear', 4.0)
    runTimer('nameOneDisappear', 6.0)
    runTimer('nameTwoDisappear', 6.0)

    bruh = false
    runTimer('alphaSHIT', 4)
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'alphaSHIT' then
        alpha = false
        for i = 0,7 do
            noteTweenAlpha('noteAppear'..i, i, 0.6, 2, 'linear')
        end
    end

    if tag == 'dissAppear' then
        for i = 1,2 do
            doTweenAlpha('appear'..i, 'Victim'..i, 0, 1, 'linear')
        end
    end

    if tag == 'nameOneAppear' then
            doTweenAlpha('nameOneAppear', 'mark', 1, 1.5, 'linear')
        end

    if tag == 'nameTwoAppear' then
            doTweenAlpha('nameTwoAppear', 'cesar', 1, 1.5, 'linear')
        end

    if tag == 'nameOneDisappear' then
            doTweenAlpha('nameOneDisappear', 'mark', 0, 1, 'linear')
        end

    if tag == 'nameTwoDisappear' then
            doTweenAlpha('nameTwoDisappear', 'cesar', 0, 1, 'linear')
        end

    if tag == 'WHOAREYOU' then
        setProperty('revealC.x', 580)
        setProperty('revealC.y', -100 - 7 * (loops - loopsLeft))
        if tic == 1 then
            setProperty('black.alpha', 1)
            tic = 2
        elseif tic == 2 then
            setProperty('black.alpha', 0.01)
            if letter < 4 then playAnim('revealC', anims[letter], true) else setProperty('revealC.alpha', 0.01); setProperty('bighead.alpha', 1) end
            letter = letter + 1
            tic = 1
        end

        if loopsLeft == 0 then
            --playSound('boomend')
            setProperty('revealC.x', 500)
            setProperty('revealC.y', -100)
            scaleObject('revealC', 1, 1.3)
            setProperty('Alterlayer.alpha', 0.01)
            setProperty('AlterlayerB.alpha', 1)
            runTimer('eyes', 2.6)
        end
    end

    if tag == 'eyes' then
        setProperty('black.alpha', 1)
        makeLuaSprite('eyes', 'eyes', 740, 30)
        addLuaSprite('eyes', true)
    end
end

function onStepHit()
    if curStep == 1334 then
        nothingIsWorthTheRisk()
    end

end

function nothingIsWorthTheRisk()
    setProperty('camHUD.alpha', 0.01)
    for i = 0,7 do
        setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
    end

    setProperty('dad.alpha', 0.01)
    setProperty('boyfriend.alpha', 0.01)

    for i = 1,#allshit do
        removeLuaSprite(allshit[i], true)
    end

    runTimer('WHOAREYOU', 0.15, 8)

end

function onGameOver()
    alpha = false
    return Function_Continue;
end