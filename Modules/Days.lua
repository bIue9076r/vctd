Days = {}
Days.days = {}

function Days.newDay(d,f)
	Days.days[d] = f or function()
		-- nothing
	end
end

function Days.loadDay(d)
	if d >= 8 then
		--player dies
		GameState = Intro
		return
	end
	
	local f = Days.days[d]
	if f then
		GameDay = d
		f()
	end
end
