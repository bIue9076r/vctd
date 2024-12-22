-- TODO: fix and unify the tile system
Tile = {}
Box = {}

function Tile.new(t,e,w)
	local tile = {
		t = t or 0,
		e = e or 0,
		w = w or 0,
	}
	
	return tile
end

function Box.new(x,y,w,h,t,e)
	local box = {
		x = x or 0,
		y = y or 0,
		w = w or 0,
		h = h or 0,
		t = t or 0, 		-- trigger
		e = e or function()	-- effect
			
		end,
	}
	
	return box
end

