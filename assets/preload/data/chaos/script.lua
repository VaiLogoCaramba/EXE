function onCreate()
	setPropertyFromClass('backend.ClientPrefs', 'data.timeBarType', 'Time Elapsed')
	setProperty('scoreTxt.alpha', 0)
	setProperty('botplayTxt.visible', false)
	setProperty('healthBar.alpha', 0)
	setProperty('healthBarBG.alpha', 0)
	setProperty('showRating', false)
	setProperty('showComboNum', false)
	setProperty('iconP1.alpha', 0)
	setProperty('iconP2.alpha', 0)
	precacheImage('hitStatic')
	precacheSound('hitStatic1')
	
	makeLuaSprite('waitin', 'waiting', 0, 0)
	addLuaSprite('waitin')

	makeLuaSprite('hud', 'hud', 0, 25)
	scaleObject('hud', 3, 3)
	setProperty('hud.antialiasing', false)
	setObjectCamera('hud', 'hud')
	addLuaSprite('hud')
	setObjectOrder('hud', 0)

	makeLuaSprite('hud3', 'bflose', 0, 25)
	scaleObject('hud3', 3, 3)
	setProperty('hud3.antialiasing', false)
	setObjectCamera('hud3', 'hud')
	addLuaSprite('hud3')
	setProperty('hud3.visible', false)

	makeAnimatedLuaSprite('hud5', 'suprabficon', 0, 25)
	addAnimationByPrefix('hud5', 'YOOO', 'suprabficon', 12, true)
	scaleObject('hud5', 3, 3)
	setProperty('hud5.antialiasing', false)
	setObjectCamera('hud5', 'hud')
	addLuaSprite('hud5')
	objectPlayAnimation('hud5', 'YOOO')
	setProperty('hud5.visible', false)

	makeAnimatedLuaSprite('hud4', 'sonichealth', 200, 635)
	addAnimationByPrefix('hud4', '0', '0H', 12, false)
	addAnimationByPrefix('hud4', '10', '10H', 12, false)
	addAnimationByPrefix('hud4', '20', '20H', 12, false)
	addAnimationByPrefix('hud4', '30', '30H', 12, false)
	addAnimationByPrefix('hud4', '40', '40H', 12, false)
	addAnimationByPrefix('hud4', '50', '50H', 12, false)
	addAnimationByPrefix('hud4', '60', '60H', 12, false)
	addAnimationByPrefix('hud4', '70', '70H', 12, false)
	addAnimationByPrefix('hud4', '80', '80H', 12, false)
	addAnimationByPrefix('hud4', '90', '90H', 12, false)
	addAnimationByPrefix('hud4', '100', '100H', 12, false)
	scaleObject('hud4', 3.2, 3.2)
	setObjectCamera('hud4', 'hud')
	setProperty('hud4.antialiasing', false)
	objectPlayAnimation('hud4', '50')
	addLuaSprite('hud4')
	setProperty('hud4.visible', true)

	setProperty('timeBar.visible', false)
	setProperty('timeBarBG.visible', false)
	setProperty('timeTxt.visible', false)

	makeLuaText('scoree', '000000', 0, 37, 38)
	setProperty('scoree.borderSize', 0)
	setProperty('scoree.antialiasing', false)
	setTextFont('scoree', 'sonichud.ttf')
	setTextColor('scoree', 'FFFFFF')
	setTextWidth('scoree', '300')
	setTextSize('scoree', 6*8, 6*8)
	setObjectOrder('scoree', 3)
	setScrollFactor('scoree', 0, 0)
	setTextAlignment('scoree', 'right')
	addLuaText('scoree')

	makeLuaText('scoreback', '000000', 0, getProperty('scoree.x')+3, getProperty('scoree.y')+3)
	setProperty('scoreback.borderSize', 0)
	setTextColor('scoreback', '484800')
	setProperty('scoreback.antialiasing', false)
	setTextFont('scoreback', 'sonichud.ttf')
	setTextSize('scoreback', 6*8, 6*8)
	setScrollFactor('scoreback', 0, 0)
	setTextWidth('scoreback', '300')
	setObjectOrder('scoreback', 2)
	setTextAlignment('scoreback', 'right')
	addLuaText('scoreback')

	makeLuaText('time', '0:00', 0, 165, 86)
	setProperty('time.borderSize', 0)
	setProperty('time.antialiasing', false)
	setTextFont('time', 'sonichud.ttf')
	setTextColor('time', 'FFFFFF')
	setTextSize('time', 6*8, 6*8)
	setTextWidth('time', '300')
	setTextAlignment('time', 'left')
	setObjectOrder('time', 3)
	setScrollFactor('time', 0, 0)
	setProperty('time.visible', false)
	addLuaText('time')

	makeLuaText('timeback', '0:00', 0, getProperty('time.x')+3, getProperty('time.y')+3)
	setProperty('timeback.borderSize', 0)
	setProperty('timeback.antialiasing', false)
	setTextFont('timeback', 'sonichud.ttf')
	setTextColor('timeback', '484800')
	setTextSize('timeback', 6*8, 6*8)
	setTextWidth('timeback', '300')
	setTextAlignment('timeback', 'left')
	setObjectOrder('timeback', 2)
	setScrollFactor('timeback', 0, 0)
	setProperty('timeback.visible', false)
	addLuaText('timeback')

	makeLuaText('faketime', '0:00', 0, 165, 86)
	setProperty('faketime.borderSize', 0)
	setProperty('faketime.antialiasing', false)
	setTextFont('faketime', 'sonichud.ttf')
	setTextColor('faketime', 'FFFFFF')
	setTextSize('faketime', 6*8, 6*8)
	setTextWidth('faketime', '300')
	setTextAlignment('faketime', 'left')
	setObjectOrder('faketime', 3)
	setScrollFactor('faketime', 0, 0)
	addLuaText('faketime')

	makeLuaText('faketimeback', '0:00', 0, getProperty('time.x')+3, getProperty('time.y')+3)
	setProperty('faketimeback.borderSize', 0)
	setProperty('faketimeback.antialiasing', false)
	setTextFont('faketimeback', 'sonichud.ttf')
	setTextColor('faketimeback', '484800')
	setTextSize('faketimeback', 6*8, 6*8)
	setTextWidth('faketimeback', '300')
	setTextAlignment('faketimeback', 'left')
	setObjectOrder('faketimeback', 2)
	setScrollFactor('faketimeback', 0, 0)
	addLuaText('faketimeback')

	makeLuaText('misses', '0', 0, -35, 133)
	setProperty('misses.borderSize', 0)
	setProperty('misses.antialiasing', false)
	setTextFont('misses', 'sonichud.ttf')
	setTextSize('misses', 6*8, 6*8)
	setObjectOrder('misses', 3)
	setTextWidth('misses', '300')
	setTextAlignment('misses', 'right')
	setScrollFactor('misses', 0, 0)
	addLuaText('misses')

	makeLuaText('missesback', '0', 0, getProperty('misses.x')+3, getProperty('misses.y')+3)
	setProperty('missesback.borderSize', 0)
	setProperty('missesback.antialiasing', false)
	setTextFont('missesback', 'sonichud.ttf')
	setTextSize('missesback', 6*8, 6*8)
	setTextWidth('missesback', '300')
	setTextAlignment('missesback', 'right')
	setTextColor('missesback', '484800')
	setObjectOrder('missesback', 3)
	setScrollFactor('missesback', 0, 0)
	addLuaText('missesback')

	makeLuaText('accuracyTxt1', '000', 0, 400, 620)
	setProperty('accuracyTxt1.antialiasing', false)
	setTextFont('accuracyTxt1', 'sonichud.ttf')
	setTextSize('accuracyTxt1', 6*8, 6*8)
	setTextBorder('accuracyTxt1', 0, '000000')
	addLuaText('accuracyTxt1')
	setObjectOrder('accuracyTxt1', 8)

	makeLuaText('accuracyTxt2', '.00%', 0, getProperty('accuracyTxt1.x')+70, 640)
	setProperty('accuracyTxt2.antialiasing', false)
	setTextFont('accuracyTxt2', 'sonicdebugfont.ttf')
	setTextSize('accuracyTxt2', 2*8, 2*8)
	setTextBorder('accuracyTxt2', 0, '000000')
	addLuaText('accuracyTxt2')
	setObjectOrder('accuracyTxt2', 8)

	makeLuaText('accuracyTxt1BACK', '000', 0, getProperty('accuracyTxt1.x')+3,  getProperty('accuracyTxt1.y')+3)
	setProperty('accuracyTxt1BACK.antialiasing', false)
	setTextFont('accuracyTxt1BACK', 'sonichud.ttf')
	setTextSize('accuracyTxt1BACK', 6*8, 6*8)
	setTextColor('accuracyTxt1BACK', '484800')
	setTextBorder('accuracyTxt1BACK', 0, '000000')
	addLuaText('accuracyTxt1BACK')
	setObjectOrder('accuracyTxt1BACK', 7)

	makeLuaText('accuracyTxt2BACK', '.00%', 0, getProperty('accuracyTxt2.x')+3,  getProperty('accuracyTxt2.y')+3)
	setProperty('accuracyTxt2BACK.antialiasing', false)
	setTextFont('accuracyTxt2BACK', 'sonicdebugfont.ttf')
	setTextSize('accuracyTxt2BACK', 2*8, 2*8)
	setTextColor('accuracyTxt2BACK', '484800')
	setTextBorder('accuracyTxt2BACK', 0, '000000')
	addLuaText('accuracyTxt2BACK')
	setObjectOrder('accuracyTxt2BACK', 7)

	makeLuaSprite('titlescreenback', 'fnf5', 0, 0)
	scaleObject('titlescreenback', 3.4, 3.3)
	setProperty('titlescreenback.antialiasing', false)
	setProperty('titlescreenback.visible', true)
	setObjectCamera('titlescreenback', 'other')
	addLuaSprite('titlescreenback')

	makeLuaSprite('titlescreen1', 'fnf1', 0, -224*3.3)
	scaleObject('titlescreen1', 3.3, 3.3)
	setProperty('titlescreen1.antialiasing', false)
	setObjectCamera('titlescreen1', 'other')
	addLuaSprite('titlescreen1')

	makeLuaSprite('titlescreen2', 'fnf2', 1056, 0)
	scaleObject('titlescreen2', 3.3, 3.3)
	setProperty('titlescreen2.antialiasing', false)
	setObjectCamera('titlescreen2', 'other')
	addLuaSprite('titlescreen2')

	makeLuaSprite('titlescreen3', 'fnf3', 1056, 0)
	scaleObject('titlescreen3', 3.3, 3.3)
	setProperty('titlescreen3.antialiasing', false)
	setObjectCamera('titlescreen3', 'other')
	addLuaSprite('titlescreen3')

	makeLuaSprite('titlescreen4', 'fnf4', 1056, 0)
	scaleObject('titlescreen4', 3.3, 3.3)
	setProperty('titlescreen4.antialiasing', false)
	setObjectCamera('titlescreen4', 'other')
	addLuaSprite('titlescreen4')

	runTimer('blacktransitionthingshit', 1)
end


function onUpdate(elapsed)

	setProperty('camZooming', false)
	
	setTextString('misses', misses)
	setTextString('missesback', misses)

	setTextString('scoree', score)
	setTextString('scoreback', score)

	setTextString('time', getTextString('timeTxt'))
	setTextString('timeback', getTextString('timeTxt'))

	-- Health shit
	local health = getProperty("health")
	
	if health <= 0.1 then
		objectPlayAnimation('hud4', '0')
	end
	if health >= 0.1 and health <= 0.3 then
		objectPlayAnimation('hud4', '10')
	end
	if health >= 0.3 and health <= 0.5 then
		objectPlayAnimation('hud4', '20')
		setProperty('hud3.visible', true)
	end
	if health >= 0.5 and health <= 0.7 then
		objectPlayAnimation('hud4', '30')
		setProperty('hud3.visible', false)
	end
	if health >= 0.7 and health <= 0.9 then
		objectPlayAnimation('hud4', '40')
	end
	if health >= 0.9 and health <= 1.1 then
		objectPlayAnimation('hud4', '50')
	end
	if health >= 1.1 and health <= 1.3 then
		objectPlayAnimation('hud4', '60')
	end
	if health >= 1.3 and health <= 1.5 then
		objectPlayAnimation('hud4', '70')
	end
	if health >= 1.5 and health <= 1.7 then
		objectPlayAnimation('hud4', '80')
	end
	if health >= 1.7 and health <= 1.9 then
		objectPlayAnimation('hud4', '90')
	end
	if health >= 1.9 and health <= 2.1 then
		objectPlayAnimation('hud4', '100')
	end
	if botPlay then
		removeLuaText('scoree')
		removeLuaText('scoreback')
		makeLuaText('bot', 'BOTPLAY', 0, 180, 60)
		setProperty('bot.borderSize', 0)
		setProperty('bot.antialiasing', false)
		setTextFont('bot', 'sonicdebugfont.ttf')
		setTextColor('bot', 'FFFFFF')
		setTextSize('bot', 18, 18)
		setObjectOrder('bot', 3)
		setScrollFactor('bot', 0, 0)
		addLuaText('bot')
	end

	curRating = floorDecimal(getProperty('ratingPercent') * 100, 1)
	splitRating = mysplit(tostring(curRating), '.')
	
	if getProperty('ratingFC') == 'SFC' then
		splitRating[1] = '100'
		splitRating[2] = '00'
	end
	
	if #splitRating[1] == 1 then
		splitRating[1] = '00'..splitRating[1]
	elseif #splitRating[1] == 2 then	
		splitRating[1] = '0'..splitRating[1]
	end
	
	if #splitRating[2] == 1 then
		splitRating[2] = '0'..splitRating[2]
	end
	if #splitRating[2] == nil then	
		splitRating[2] = '00'
	end
	
	setTextString('accuracyTxt1', splitRating[1])
	setTextString('accuracyTxt2', '.'..splitRating[2]..'%')

	
	setTextString('accuracyTxt1BACK', splitRating[1])
	setTextString('accuracyTxt2BACK', '.'..splitRating[2]..'%')
end
function onStepHit()
	if curStep >= 0 then
		removeLuaText('faketime')
		removeLuaText('faketimeback')
		setProperty('timeback.visible', true)
		setProperty('time.visible', true)
	end
end
function onEvent(name, v1, v2)
	if name == 'Change Character' and v2 == 'suprabf' then
		setProperty('hud5.visible', true)
	end
end

function onTimerCompleted(tag)
	if tag == 'blacktransitionthingshit' then
		doTweenY('tt1', 'titlescreen1', 0, 0.3)
		runTimer('tt2incoming', 0.1)
	end
	if tag == 'tt2incoming' then
		doTweenX('tt2', 'titlescreen2', 0, 0.3)
		runTimer('tt3incoming', 0.1)
	end
	if tag == 'tt3incoming' then
		doTweenX('tt3', 'titlescreen3', 0, 0.3)
		runTimer('tt4incoming', 0.1)
	end
	if tag == 'tt4incoming' then
		doTweenX('tt4', 'titlescreen4', 0, 0.3)
		runTimer('out', 2.5)
		runTimer('out1', 2.6)
		runTimer('out2', 2.7)
		runTimer('out3', 2.8)
		runTimer('blackscreenout', 0.8)
	end
	if tag == 'blackscreenout' then
		doTweenAlpha('tt5', 'titlescreenback', 0, 0.2)
	end
	if tag == 'out' then
		doTweenY('tt1', 'titlescreen1', -224*3.3, 0.2)
	end
	if tag == 'out1' then
		doTweenX('tt2', 'titlescreen2', 1056, 0.2)
	end
	if tag == 'out2' then
		doTweenX('tt3', 'titlescreen3', 1056, 0.2)
	end
	if tag == 'out3' then
		doTweenX('tt4', 'titlescreen4', 1056, 0.2)
	end
end

function mysplit (inputstr, sep)
   if sep == nil then
      sep = "%s"
   end
   local t={}
   for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
      table.insert(t, str)
   end
   return t
end

function floorDecimal(value, decimals) --just a port of Highscore.floorDecimal
	if decimals < 1 then
		return math.floor(value)
	end
	
	local tempMult = 1
	for i=0, decimals do
		tempMult = tempMult * 10
	end
	newValue = math.floor(value * tempMult)
	return newValue / tempMult
end