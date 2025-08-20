function split(str)
	local tbl = {}
	local index = 1
	local num = ""
	for i = 1,#str do
		local c = str:sub(i,i)
		if c == "." then
			tbl[index] = num
			index = index + 1
			num = ""
		else
			num = num..c
			tbl[index] = num
		end
	end
	
	return tbl
end

function isVersionCompatible(tv)
	local tv = split(tv)
	local mtv = tv[1] or 0
	local ptv = tv[2] or 0
	
	local v = split(VERSION)
	local mv = v[1] or 0
	local pv = v[2] or 0
	
	if not (mv == mtv) then
		print("Major Version Mismatch")
		love.event.quit() -- Panic
	end
	
	if not (pv == ptv) then
		-- throw warning
		CVERSION = ptv
	end
end