function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Dark ring' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'dark rings');
			setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true)
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0');
			setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
		end
	end

	if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Dark ring' then 
		setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true);
		end
	end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Dark ring' then
		addMisses(5)
		setProperty('health', getProperty('health')-0.15);
    		playSound('dark ring');
		characterPlayAnim('boyfriend', 'hurt', '24', true);
		setProperty('boyfriend.specialAnim', true);
	end
end