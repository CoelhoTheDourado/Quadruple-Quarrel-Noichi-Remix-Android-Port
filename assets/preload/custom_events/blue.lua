function onEvent(name, value1, value2)
   if name == 'blue' and not lowQuality then
    makeLuaSprite('image', 'blueVg', 0, 0);
    addLuaSprite('image', true);
    doTweenColor('hello', 'image', '2400db', 0.4, 'quartIn');
    setObjectCamera('image', 'other');
    runTimer('wait', 0);
    
    end
	end 
    
    function onTimerCompleted(tag, loops, loopsleft)
    if tag == 'wait' then
    doTweenAlpha('byebye', 'image', 0, 0.4, 'linear');
    end
    end
    
    function onTweenCompleted(tag)
    if tag == 'byebye' then
    removeLuaSprite('image', true);
    end
	end
