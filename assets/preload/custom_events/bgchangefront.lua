function onEvent(name, value1, value2)
   if name == 'bgchangefront' then
    makeLuaSprite(value2, value1, -600, -300);
    addLuaSprite(value2, true);
    
    
    
    end
end