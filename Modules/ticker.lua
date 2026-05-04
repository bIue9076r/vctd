-- Ticker (Discrete)

ticker = {}
ticker.ticker = {
	i = 0,
}
ticker.flags = {}

function ticker.new()
	tbl = {
		ticker = {
			i = 0,
		},
		flags = {},
	}
	
	mt = {
		__index = ticker,
		__call = ticker.inc,
	}
	
	return setmetatable(tbl,mt)
end

function ticker:flagSet(i,v)
	self.flags[i] = v
end

function ticker:flagGet(i)
	return self.flags[i]
end

function ticker:reset()
	self.ticker.i = 0
end

function ticker:set(v)
	self.ticker.i = v
end

function ticker:get()
	return self.ticker.i
end

function ticker:inc()
	self.ticker.i = self.ticker.i + 1
end


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
