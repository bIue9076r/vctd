-- Stagger Print string

function spString(str,t,dt)
	l = #str
	lt = l*t
	
	return sub(str,1,min(l,floor((dt:get() * (l/lt)) + 1)))
end
