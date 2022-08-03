function onEvent(name, value1, value2)
	if name == 'god two' then
		makeAnimatedLuaSprite('god', 'god', 300, 1000);
		addAnimationByPrefix('god', 'god', 'god', 24, false)
		scaleObject('god', 1.7, 1.7);
		addLuaSprite('god', true);
	end
end