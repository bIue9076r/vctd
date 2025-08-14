Story = {}
Story.vars = {}
Story.beats = {}

function Story.set(n,v,r)
	Story.vars[n] = {
		v = v or false,
		r = r or false,
		e = true
	}
	
	if not Story.vars[n].v then
		return
	end
	
	if not Story.beats[n] then
		return
	end
	
	if Story.vars[n].e then
		Story.beats[n]()
		Story.vars[n].e = false
	else
		if Story.vars[n].r then
			Story.beats[n]()
		end
	end
end

function Story.setBeat(n,b)
	Story.beats[n] = b or function() end
end

function Story.get(n)
	if Story.vars[n] then
		return Story.vars[n].v or false
	else
		return false
	end
end

function Story.Save(file)
	file:SetHeader()
	for i,v in pairs(Story.vars) do
		file:NewField("story_"..tostring(i).."_v",tostring(v.v))
		file:NewField("story_"..tostring(i).."_r",tostring(v.r))
		file:NewField("story_"..tostring(i).."_e",tostring(v.e))
	end
end

function Story.Load(file)
	local tbl, e = file:Read()
	print("Todo")
	if not e then
		for i,v in pairs(tbl) do
			if i:sub(1,6) == "story_" then
				i = i:sub(7)
				print(i,v)
				Story.vars[i:sub(1,-3)] = Story.vars[i:sub(1,-3)] or {}
				
				if i:sub(-2) == "_v" then
					Story.vars[i:sub(1,-3)].v = v
				elseif i:sub(-2) == "_r" then
					Story.vars[i:sub(1,-3)].r = v
				elseif i:sub(-2) == "_e" then
					Story.vars[i:sub(1,-3)].e = v
				end
			end
		end
	end
end
