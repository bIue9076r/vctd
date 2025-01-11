sound.new("Roof","/Assets/Roof_Floor.mp3","stream")
sound.new("Ground","/Assets/Ground_Floor.mp3","stream")
sound.new("Main","/Assets/Main_Floor.mp3","stream")

bs = sound.getSound("Main")
soundTick = ticker.new()
muted = false
