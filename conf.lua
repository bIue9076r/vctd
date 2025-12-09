function love.conf(t)
	t.version = "11.3"
	t.identity = "VCTD"
	t.window.icon = "Assets/Varisa.png"
	t.window.title = "Detective Rpg"
	t.window.width = 600
	t.window.height = 400
	t.window.fullscreen = false
	t.window.resizeable = true
	t.modules.keyboard = true
	t.modules.mouse = true
	t.modules.audio = true
	t.modules.font = true
	t.modules.timer = true
	t.modules.window = true
	t.modules.image = true
	t.console = true
end