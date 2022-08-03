function onEvent(name, value1, value2)
	if name == 'ima' then
		makeAnimatedLuaSprite('Immagetya', 'Immagetya', 300, 1000);
		addAnimationByPrefix('Immagetya', 'Immagetya', 'Immagetya', 24, false)
		scaleObject('Immagetya', 1.7, 1.7);
		addLuaSprite('Immagetya', true);
	end
end