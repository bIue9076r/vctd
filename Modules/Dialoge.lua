Dialoge = {}
Dialoge.text = {"......"}
Dialoge.index = 1

function Dialoge.new(ttbl)
	local tbl = {
		text = ttbl or {"......"},
		index = 1,
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
		self.index = 1
	end
	return ret
end