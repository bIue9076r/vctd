-- Jukebox module

function Jukebox_mute()
	muted = not(muted)
	Play.unmuteAfter = false
	if bs then
		bs:pause()
		if not muted then
			bs:play()
		end
	end
end

function Jukebox_forceStop()
	love.audio.stop()
end

function Jukebox_draw()
	if not muted then
		if not song_silence then
			if bs then
				if not bs:isPlaying() then
					plyed = not plyed
					if not plyed then
						song_silence = true
						bs = nil
					else
						bs = sound.getSound(SongListSelect(SongList))
						if bs then
							bs:seek(0)
							bs:play()
						end
					end
				end
			else
				song_silence = true
			end
		else
			if soundTick:get() <= 300 then
				soundTick(love.timer.getDelta()) -- Silence
			else
				soundTick:reset()
				bs = sound.getSound(SongListSelect(SongList))
				song_silence = false
			end
		end
	end
end