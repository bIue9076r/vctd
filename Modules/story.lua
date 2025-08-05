Story = {}
Story.vars = {}

function Story.set(n,v)
	Story.vars[n] = v or false
end

function Story.get(n)
	return Story.vars[n] or false
end

function Story.Save(file)
	file:SetHeader()
	for i,v in pairs(Story.vars) do
		file:NewField(tostring(i),tostring(v))
	end
end

function Story.Load(file)
	local tbl, e = file:Read()
	print("Todo")
	if not e then
		for i,v in pairs(tbl) do
			print(i,v)
			Story.vars[i] = v
		end
	end
end
