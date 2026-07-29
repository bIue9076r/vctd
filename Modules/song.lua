Song = {}
Song.moodMin = 0 -- Darkest Mood the Song Will Play
Song.moodMax = 0 -- Brightest Mood the Song Will Play
Song.Name = ""
Song.count = 0

function Song.new(n,mn,mx)
	local tbl = {
		Name = n or "",
		moodMin = mn or 0,
		moodMax = mx or 0,
		count = 0,
	}
	
	local mt = {
		__index = Song,
		__call = Song.canPlay,
	}
	
	return setmetatable(tbl,mt)
end

function Song:canPlay()
	return ((self.moodMin <= Mood:get()) and (self.moodMax >= Mood:get()))
end

function SongListSelect(List)
	local okTbl = {}
	local cnTbl = {}
	
	for i,v in pairs(List) do
		if v:canPlay() then
			table.insert(okTbl,v.Name)
			table.insert(cnTbl,v.count)
		end
	end
	
	if #okTbl == 0 then
		return nil
	end
	
	local n = math.random(1,#okTbl)
	for _ = 1,5 do -- 5 tries
		local m = false
		
		for i = 1,#cnTbl do
			if not (i == n) then
				if (cnTbl[n] - cnTbl[i]) >= 2 then
					m = true
				end
			end
		end
		
		if m then
			n = math.random(1,#okTbl)
		else
			break
		end
	end
	
	return okTbl[n]
end
