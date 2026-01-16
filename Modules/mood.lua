Mood = {}
Mood.mood = 0 -- -5 <-> 5
Mood.timeMood = 0
Mood.darkness = 0

Mood.moodChanged = nil

function Mood.change(m)
	Mood.mood = Mood.mood + (m or 0)
	Mood.mood = math.max(math.min(5,Mood.mood),-5)

	if Mood.moodChanged then
		Mood.moodChanged()
	end
end

function Mood.set(m)
	Mood.mood = m or 0
	Mood.mood = math.max(math.min(5,Mood.mood),-5)
	
	if Mood.moodChanged then
		Mood.moodChanged()
	end
end

function Mood.timeSet(tm)
	Mood.timeMood = tm or 0
	
	if Mood.moodChanged then
		Mood.moodChanged()
	end
end

function Mood.darkSet(dm)
	Mood.darkness = dm or 0
	
	if Mood.moodChanged then
		Mood.moodChanged()
	end
end

function Mood.get()
	return math.max(math.min(5,Mood.mood + Mood.timeMood - Mood.darkness),-5)
end

function Mood.print()
	print(math.max(math.min(5,Mood.mood + Mood.timeMood - Mood.darkness),-5))
end

function Mood.str()
	return tostring(math.max(math.min(5,Mood.mood + Mood.timeMood - Mood.darkness),-5))
end
