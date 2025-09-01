Days = {}
Days.days = {}

function Days.newDay(d,f)
	Days.days[d] = f or function()
		-- nothing
	end
end

function Days.loadDay(d)
	local f = Days.days[d]
	if f then
		f()
	end
end
