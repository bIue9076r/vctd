Text = {}
Text.s = "......"
Text.c = -1

function Text.new(s,c,e)
	local tbl = {
		s = s or "......",
		c = c or -1,
		e = e or function()
			
		end,
	}
	
	local mt = {
		__index = Text,
		__call = Text.get,
	}
	
	return setmetatable(tbl,mt)
end

function Text:get()
	local rs = self.s
	local rc = self.c
	self.e()
	return rs, rc
end

Dialoge = {}
Dialoge.text = {Text.new("......")}
Dialoge.index = 1
Dialoge.cycle = 0

--{
--	s="......",
--	n=house_npc.c,
--	t=ticker.new()
--}

function Dialoge.new(ttbl,c,e)
	local tbl = {
		text = ttbl or {Text.new("......")},
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
	local rs, rc = self.text[self.index]()
	self.index = self.index + 1
	if self.index > #self.text then
		if self.cycle == 0 then
			self.index = 1
		else
			self.index = self.index - 1
		end
		self.effect()
	end
	return {s=rs, n=rc}
end