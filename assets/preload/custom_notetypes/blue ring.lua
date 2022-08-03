function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'blue ring' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'blue ring');
			setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true)
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0');
			setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
		end
	end

	if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'blue ring' then 
		setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true);
		end
	end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'blue ring' then
		addMisses(-10)
		setProperty('health', 1);
    		playSound('ring');
	end
end