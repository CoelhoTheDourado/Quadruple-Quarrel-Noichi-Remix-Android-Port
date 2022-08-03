-- Event notes hooks
function onCreate()
	makeAnimatedLuaSprite('sussyStatic', 'daSTAT', 0, 0)
	addAnimationByPrefix('daSTAT', 'sussyStatic', 'daSTAT', 24, true)
	scaleObject('sussyStatic', 3.2, 3.2);
	setObjectCamera('sussyStatic', 'hud')
	precacheImage('sussyStatic')
end

function onEvent(name, value1, value2)
	if name == 'static' then
		addLuaSprite('sussyStatic', true)
		objectPlayAnimation('sussyStatic', 'e', true)
		runTimer('delay', 0.08)
		playSound('staticBUZZ', 0.8);
		triggerEvent('Add Camera Zoom', 0.05, 0)
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'delay' then
		removeLuaSprite('sussyStatic', false)
	end
end