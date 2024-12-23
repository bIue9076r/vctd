Dialoge = {}
Dialoge.text = {"......"}
Dialoge.index = 1
Dialoge.cycle = 0

function Dialoge.new(ttbl,c,e)
	local tbl = {
		text = ttbl or {"......"},
		index = 1,
		cycle = c or 0,
		effect = e or function()
			
		end,
	}
	
	local mt = {
		__index = Dialoge,
		__call = Dialoge.get,
	}
	
	return setmetatable(tbl,mt)
end

function Dialoge:get()
	local ret = self.text[self.index]
	self.index = self.index + 1
	if self.index > #self.text then
		if self.cycle == 0 then
			self.index = 1
		else
			self.index = self.index - 1
			self.effect()
		end
	end
	return ret
end