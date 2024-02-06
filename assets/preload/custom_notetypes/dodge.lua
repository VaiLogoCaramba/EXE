function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == "dodge" then
		setProperty('health', -500);
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == "dodge" then
		triggerEvent('Play Animation','dodge', 'bf')
		runTimer('workyoufuck', 0.01)
	end
end

function onTimerCompleted(tag)
	if tag == 'workyoufuck' then
		triggerEvent('Play Animation','dodge', 'bf')
	end
end