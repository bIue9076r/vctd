Time = {}
Time.hour = 8 -- 0 <-> 23
Time.minute = 0 -- 0 <-> 59
--Time.second = 0 -- 0 <-> 59

Time.changed = nil
Time.changedMin = nil

function Time.tick()
	Time.minute = Time.minute + 1
	if Time.minute >= 60 then
		Time.minute = 0
		Time.hour = Time.hour + 1
		if Time.hour >= 24 then
			Time.hour = 0
		end
		
		if Time.changed then
			Time.changed()
		end
	end
	
	if Time.changedMin then
		Time.changedMin()
	end
end

function Time.setHour(h)
	Time.hour = h
	if Time.changed then
		Time.changed()
	end
end

function Time.setMinute(h)
	Time.hour = h
	if Time.changedMin then
		Time.changedMin()
	end
end

function Time.getMin()
	return Time.minute
end

function Time.getHour()
	return Time.hour
end

function Time.print()
	print(Time.hour..":"..Time.minute)
end

function Time.str()
	return Time.hour..":"..Time.minute
end

Time.__call = Time.tick