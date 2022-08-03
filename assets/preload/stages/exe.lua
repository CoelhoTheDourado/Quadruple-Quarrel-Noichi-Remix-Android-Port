function onCreate()
	-- background shit
	precacheImage('daSTAT');
	precacheImage('SunkBG');
	precacheImage('green hill');
	precacheImage('TreesFG');

	makeLuaSprite('Glitch', 'Glitch', -600, -300);
	setScrollFactor('Glitch', 0.9, 0.9);

	makeLuaSprite('Xeno bg', 'Xeno bg', -600, -300);
	setScrollFactor('Xeno bg', 0.9, 0.9);

	makeLuaSprite('TreesFront', 'TreesFront', -600, -300);
	setScrollFactor('TreesFront', 0.9, 0.9);

	addLuaSprite('Glitch', false);
	addLuaSprite('Xeno bg', false);
	addLuaSprite('TreesFront', true);

	close(true); --For performance reasons, close this script once the park is fully loaded, as this script won't be used anymore after loading the park
end