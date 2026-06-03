Text = {}
Text.s = "......"
Text.c = -1
Text.v = "Normal"
Text.a = false
Text.n = 0

function Text.new(s,c,v,e)
	local tbl = {
		s = s or "......",	-- String
		c = c or -1,		-- Char
		v = v or "Normal",	-- Voice
		a = false,			-- Animated
		l = false,			-- Left Dialogue
		n = 0,				-- Number
		e = e or function()	-- Effect
			
		end,
	}
	
	local mt = {
		__index = Text,
		__call = Text.get,
	}
	
	return setmetatable(tbl,mt)
end

function Text.newAnimated(s,c,n,v,e)
	local tbl = {
		s = s or "......",	-- String
		c = c or -1,		-- Char
		v = v or "Normal",	-- Voice
		a = true,			-- Animated
		l = false,			-- Left Dialogue
		n = n or 0,			-- Number
		e = e or function()	-- Effect
			
		end,
	}
	
	local mt = {
		__index = Text,
		__call = Text.get,
	}
	
	return setmetatable(tbl,mt)
end

function Text.newAnimatedLeft(s,c,n,v,e)
	local tbl = {
		s = s or "......",	-- String
		c = c or -1,		-- Char
		v = v or "Normal",	-- Voice
		a = true,			-- Animated
		l = true,			-- Left Dialogue
		n = n or 0,			-- Number
		e = e or function()	-- Effect
			
		end,
	}
	
	local mt = {
		__index = Text,
		__call = Text.get,
	}
	
	return setmetatable(tbl,mt)
end

function Text:get(npc)
	local rs = self.s
	local rc = self.c
	local rv = self.v
	local ra = self.a
	local rl = self.l
	local rn = self.n
	self.e(npc)
	return rs, rc, rv, ra, rl, rn
end

Dialogue = {}
Dialogue.text = {Text.new("......")}
Dialogue.index = 1
Dialogue.cycle = 0

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
	local rs, rc, rv, ra, rl, rn = self.text[self.index](npc)
	self.index = self.index + 1
	if self.index > #self.text then
		if self.cycle == 0 then
			self.index = 1
		else
			self.index = self.index - 1
		end
		self.effect(npc)
	end
	return {s=rs, n=rc, v=rv, a=ra, l=rl, t=rn}
end
