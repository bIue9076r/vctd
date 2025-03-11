sound.new("Roof","/Assets/Roof_Floor.mp3","stream")
sound.new("Ground","/Assets/Ground_Floor.mp3","stream")
sound.new("Main","/Assets/Main_Floor.mp3","stream")

sound.new("EpT1","/Assets/episode_1_theme.mp3","stream")
sound.new("EpT1_L","/Assets/Ep1T_Lyrics.mp3","stream")
sound.new("EpT1_G","/Assets/Ep1T_Guitar.mp3","stream")
sound.new("EpT1_B","/Assets/Ep1T_Bass.mp3","stream")
sound.new("EpT1_D","/Assets/Ep1T_Drums.mp3","stream")

sound.new("Talk_1","/Assets/talk_1_normal.mp3","static")
sound.new("Talk_2","/Assets/talk_1_slow.mp3","static")
sound.new("Talk_3","/Assets/talk_1_fast.mp3","static")

bs = sound.getSound("Main")
soundTick = ticker.new()
muted = false
