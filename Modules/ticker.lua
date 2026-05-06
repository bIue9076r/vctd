-- Ticker (Continuous)

tickerc = {}
tickerc.ticker = {
	i = 0,
}
tickerc.flags = {}

function tickerc.new()
	tbl = {
		ticker = {
			i = 0,
		},
		flags = {},
	}
	
	mt = {
		__index = tickerc,
		__call = tickerc.inc,
	}
	
	return setmetatable(tbl,mt)
end

function tickerc:flagSet(i,v)
	self.flags[i] = v
end

function tickerc:flagGet(i)
	return self.flags[i]
end

function tickerc:reset()
	self.ticker.i = 0
end

function tickerc:set(v)
	self.ticker.i = v
end

function tickerc:get()
	return self.ticker.i
end

function tickerc:inc(dt)
	self.ticker.i = self.ticker.i + dt
end

-- Ticker (Discrete)

tickerd = {}
tickerd.ticker = {
	i = 0,
}
tickerd.flags = {}

function tickerd.new()
	tbl = {
		tickerd = {
			i = 0,
		},
		flags = {},
	}
	
	mt = {
		__index = tickerd,
		__call = tickerd.inc,
	}
	
	return setmetatable(tbl,mt)
end

function tickerd:flagSet(i,v)
	self.flags[i] = v
end

function tickerd:flagGet(i)
	return self.flags[i]
end

function tickerd:reset()
	self.ticker.i = 0
end

function tickerd:set(v)
	self.ticker.i = v
end

function tickerd:get()
	return self.ticker.i
end

function tickerd:inc()
	self.ticker.i = self.ticker.i + 1
end

-- Ticker (Discrete)
ticker = tickerc