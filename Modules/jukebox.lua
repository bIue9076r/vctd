-- Jukebox module

Jukebox_song = nil
Jukebox_silence = false
Jukebox_paused = false
Jukebox_oncePlayed = false

Jukebox_Tick = ticker.new()

function Jukebox_canPlay()
	return (GameState == WORLD) or (GameState == Fade) or (GameState == Fadeout)
end

function Jukebox_play()
	if Jukebox_song then
		Jukebox_song:setVolume(Game_MusicVolume)
		Jukebox_song:play()
	end
	Jukebox_paused = false
end

function Jukebox_stop()
	if Jukebox_song then
		Jukebox_song:stop()
	end
end

function Jukebox_rewind()
	if Jukebox_song then
		Jukebox_song:seek(0)
	end
end

function Jukebox_pause()
	if Jukebox_song then
		Jukebox_song:pause()
	end
	Jukebox_paused = true
end

function Jukebox_next()
	if Jukebox_song then
		Jukebox_song:stop()
	end
	Jukebox_song = sound.getSound(SongListSelect(SongList))
	Jukebox_rewind()
	Jukebox_silence = false
	Jukebox_oncePlayed = false
	Jukebox_Tick:reset()
end

function Jukebox_mute()
	if not Game_Mute_Toggle then
		Jukebox_pause() -- Pause your music for later
	else
		Jukebox_play()
	end
end

function Jukebox_forceStop()
	Jukebox_silence = true
	Jukebox_Tick:reset()
	love.audio.stop()
end

function Jukebox_draw()
	if not Jukebox_paused then
		if not Jukebox_silence then
			if Jukebox_song then
				if not Jukebox_song:isPlaying() then
					if Jukebox_oncePlayed then
						Jukebox_silence = true
					else
						Jukebox_play()
						Jukebox_oncePlayed = true
					end
				end
			else
				Jukebox_silence = true
			end
		else
			if Jukebox_Tick:get() <= 300 then
				Jukebox_Tick(love.timer.getDelta())
			else
				Jukebox_next()
			end
		end
	else
		-- do nothing while paused
	end

	-- if not muted then
	-- 	if not song_silence then
	-- 		if bs then
	-- 			if not bs:isPlaying() then
	-- 				plyed = not plyed
	-- 				if not plyed then
	-- 					song_silence = true
	-- 					bs = nil
	-- 				else
	-- 					bs = sound.getSound(SongListSelect(SongList))
	-- 					if bs then
	-- 						bs:seek(0)
	-- 						bs:play()
	-- 					end
	-- 				end
	-- 			end
	-- 		else
	-- 			song_silence = true
	-- 		end
	-- 	else
	-- 		if soundTick:get() <= 300 then
	-- 			soundTick(love.timer.getDelta()) -- Silence
	-- 		else
	-- 			soundTick:reset()
	-- 			bs = sound.getSound(SongListSelect(SongList))
	-- 			song_silence = false
	-- 		end
	-- 	end
	-- end
end
