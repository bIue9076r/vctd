Days = {}
Days.days = {}

function Days.newDay(f)
	Days.days = f or function()
		-- nothing
	end
end

function Days.loadDay(d)
	local f = Days.days[d]
	if f then
		f()
	end
end
