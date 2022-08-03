function onCreate()
	makeLuaSprite('tailjump', 'P3_Tails', -175, -100);
	setScrollFactor('tailjump', 0, 0);
	setObjectCamera('tailjump', 'other');
	scaleObject('tailjump',1.25,1.25)
	addLuaSprite('tailjump',true)
	setProperty('tailjump.visible', false)
end

function onEvent(name, value1)
    if name == "Tails Jump" then
		playSound('TailsScreamLOL', 0.1)
		setSoundVolume('TailsScreamLOL', 0.1)
		setProperty('tailjump.visible', true)
		runTimer('jummpT', 0.3);
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'jummpT' then
		setProperty('tailjump.visible', false)
	end
end