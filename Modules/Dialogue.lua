Text = {}
Text.s = "......"
Text.c = -1
Text.v = "Normal"

function Text.new(s,c,v,e)
	local tbl = {
		s = s or "......",	-- String
		c = c or -1,		-- Char
		v = v or "Normal",	-- Voice
		e = e or function()	-- Effect
			
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
	local rv = self.v
	self.e()
	return rs, rc, rv
end

Dialogue = {}
Dialogue.text = {Text.new("......")}
Dialogue.index = 1
Dialogue.cycle = 0

--{
--	s="......",
--	n=house_npc.c,
--	v="Normal"
--	t=ticker.new()
--}

function Dialogue.new(ttbl,c,e)
	local tbl = {
		text = ttbl or {Text.new("......")},
		index = 1,
		cycle = c or 0,
		effect = e or function()
			
		end,
	}
	
	local mt = {
		__index = Dialogue,
		__call = Dialogue.get,
	}
	
	return setmetatable(tbl,mt)
end

function Dialogue:get(npc)
	local rs, rc, rv = self.text[self.index]()
	self.index = self.index + 1
	if self.index > #self.text then
		if self.cycle == 0 then
			self.index = 1
		else
			self.index = self.index - 1
		end
		self.effect(npc)
	end
	return {s=rs, n=rc, v=rv}
end
