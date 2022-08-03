function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 2 == 0 then
		triggerEvent('Add Camera Zoom', 0.025, 0)
	end
end