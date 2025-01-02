Song = {}
Song.moodMin = 0 -- Darkest Mood the Song Will Play
Song.moodMax = 0 -- Brightest Mood the Song Will Play
Song.Name = ""

function Song.new(n,mn,mx)
	local tbl = {
		Name = n or "",
		moodMin = mn or 0,
		moodMax = mx or 0,
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
	
	for i,v in pairs(List) do
		if v:canPlay() then
			table.insert(okTbl,v.Name)
		end
	end
	
	return okTbl[math.random(1,#okTbl)]
end
