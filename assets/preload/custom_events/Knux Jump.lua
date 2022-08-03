function onCreate()
	makeLuaSprite('knuxjump', 'P3_Knuckles', -175, -100);
	setScrollFactor('knuxjump', 0, 0);
	setObjectCamera('knuxjump', 'other');
	scaleObject('knuxjump',1.25,1.25)
	addLuaSprite('knuxjump',true)
	setProperty('knuxjump.visible', false)
end

function onEvent(name, value1)
    if name == "Knux Jump" then
		playSound('KnucklesScreamLOL', 0.1)
		setSoundVolume('KnucklesScreamLOL', 0.4)
		setProperty('knuxjump.visible', true)
		runTimer('jummpK', 0.3);
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'jummpK' then
		setProperty('knuxjump.visible', false)
	end
end