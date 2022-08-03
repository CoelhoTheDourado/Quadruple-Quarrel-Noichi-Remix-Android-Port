function onCreate()
	makeLuaSprite('eggjump', 'P3_Eggman', -175, -100);
	setScrollFactor('eggjump', 0, 0);
	setObjectCamera('eggjump', 'other');
	scaleObject('eggjump',1.25,1.25)
	addLuaSprite('eggjump',true)
	setProperty('eggjump.visible', false)
end

function onEvent(name, value1)
    if name == "Egg Jump" and not lowQuality then
		playSound('EggmanScreamLOL', 0.1)
		setSoundVolume('EggmanScreamLOL', 0.1)
		setProperty('eggjump.visible', true)
		runTimer('jummpE', 0.3);
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'jummpE' then
		setProperty('eggjump.visible', false)
	end
end