Mood = {}
Mood.mood = 0 -- -5 <-> 5

Mood.moodChanged = nil

function Mood.change(m)
	Mood.mood = Mood.mood + (m or 0)
	
	if Mood.mood > 5 then Mood.mood = 5 end
	if Mood.mood < -5 then Mood.mood = -5 end
	
	if Mood.moodChanged then
		Mood.moodChanged()
	end
end

function Mood.set(m)
	Mood.mood = m or 0
	
	if Mood.mood > 5 then Mood.mood = 5 end
	if Mood.mood < -5 then Mood.mood = -5 end
	
	if Mood.moodChanged then
		Mood.moodChanged()
	end
end

function Mood.get()
	return Mood.mood
end

function Mood.print()
	print(Mood.mood)
end

function Mood.str()
	return tostring(Mood.mood)
end

Mood.__call = Mood.get
