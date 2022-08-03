function onEvent(name, value1, value2)
   if name == 'bgchangefront2' then
    makeLuaSprite(value2, value1, -600, -300);
    addLuaSprite(value2, true);
    setObjectCamera(value2, 'other');
    
        
    end
end