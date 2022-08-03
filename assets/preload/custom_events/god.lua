function onEvent(name, value1, value2)
	if name == 'god' then
		makeAnimatedLuaSprite('god', 'god', 1300, 1150);
		addAnimationByPrefix('god', 'god', 'god', 24, false)
		scaleObject('god', 1.7, 1.7);
		addLuaSprite('god', false);
	end
end