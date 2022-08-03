function onEvent(name, value1, value2)
	if name == 'bgchange xeno' then
		makeAnimatedLuaSprite('animated', 'animated', -480, -235);
		addAnimationByPrefix('animated', 'animated', 'animated', 24, true)
		scaleObject('animated', 11, 11);
		addLuaSprite('animated', false);
	end
end