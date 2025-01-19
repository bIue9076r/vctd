-- Stagger Print string

function spString(str,t,dt)
	local l = utf8.len(str)
	local lt = l*t
	local st = min(l,floor((dt:get() * (l/lt))) + 1)
	local of = utf8.offset(str,st)
	return utf8.char(utf8.codepoint(str,1,of))
end
