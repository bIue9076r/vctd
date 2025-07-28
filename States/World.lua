World = {}
World.movespeed = 7
World.snpc = nil
World.sdbox = nil
World.dtbl = nil
World.dticker = ticker.new()

function World.setNpc(npc)
	if npc then
		World.snpc = npc
	end
end

function World.setDbox(dbox)
	if dbox then
		World.sdbox = dbox
	end
end

function World.doTalk(key)
	return (
		(World.snpc)
		and (not (World.snpc.g == 1))
		and (key == "e")
	)
end

World.Map = {}
World.NextMap = {}
World.ChangeMap = false
World.AfterEffect = function()
	
end
--require("/maps/Maps")
World.Dialogue = {}
-- Include Dialogue File
require("dialogue/Dialogues")
require("dialogue/French/Dialogues")
--

World.showMap = false

function World.nextMap(map)
	World.NextMap = map
	World.ChangeMap = true
end

function World.drawMapIcon(i,x,y)
	local Tx = (SCREEN_X/24)
	local Ty = (SCREEN_Y/16)
	
	love.graphics.draw(
		i,
		SCREEN_X*((25 + (x)*25)/(600)),
		SCREEN_Y*((25 + (y)*25)/(400)),
		0,
		Tx/i:getWidth(),
		Ty/i:getHeight()
	)
end

function World.drawMap()
	if World.showMap then
		local Tx = ((SCREEN_X * 55)/60)
		local Ty = ((SCREEN_Y * 7)/8)
		local img = image.getImage("Map")
		love.graphics.draw(
			img,
			SCREEN_X*(25/600),
			SCREEN_Y*(25/400),
			0,
			Tx/img:getWidth(),
			Ty/img:getHeight()
		)
		
		img = image.getImage(Families[House.house[2].HouseHold])
		World.drawMapIcon(img,4.2,4)
		
		img = image.getImage(Families[House.house[1].HouseHold])
		World.drawMapIcon(img,8,4)
		
		img = image.getImage("Varisa")
		World.drawMapIcon(img,11.6,4)
		
		img = image.getImage("Tracey")
		World.drawMapIcon(img,15,4)
		
		img = image.getImage(Families[House.house[6].HouseHold])
		World.drawMapIcon(img,4.2,7.4)
		
		img = image.getImage(Families[House.house[5].HouseHold])
		World.drawMapIcon(img,8,7.4)
		
		img = image.getImage(Families[House.house[4].HouseHold])
		World.drawMapIcon(img,11.6,7.4)
		
		img = image.getImage(Families[House.house[3].HouseHold])
		World.drawMapIcon(img,15,7.4)
		
		img = image.getImage(Families[House.house[10].HouseHold])
		World.drawMapIcon(img,4.2,10.4)
		
		img = image.getImage(Families[House.house[9].HouseHold])
		World.drawMapIcon(img,8,10.4)
		
		img = image.getImage(Families[House.house[8].HouseHold])
		World.drawMapIcon(img,11.6,10.4)
		
		img = image.getImage(Families[House.house[7].HouseHold])
		World.drawMapIcon(img,15,10.4)
	end
end

function World.Draw()
	-- draw background and sprites
	drawBackgound()
	drawSprites()
	Plr.inv:drawInv()
	World.drawMap()
	
	-- if talking
	drawDialogue()
end

function World.Update(dt)
	if not IsTalking then
		local rnpc, rdbox = movePlayer(dt,World.movespeed)
		World.setNpc(rnpc)
		World.setDbox(rdbox)
		
		Plr.inv:update(dt)
	end
	
	if World.sdbox then
		local Tx = Plr.x
		local Ty = Plr.y
		local Wx = World.sdbox.x
		local Wy = World.sdbox.y
		local Ww = World.sdbox.w
		local Wh = World.sdbox.h
		
		-- if not colliding with dbox
		if not wallCollide(Tx,Ty,Wx,Wy,Ww,Wh) then
			World.snpc = nil
			World.sdbox = nil
		end
	end
end

function World.Keypressed(key)
	-- if npc, not talking, and 'e'
	if not IsTalking then
		if World.doTalk(key) then
			IsTalking = true
			
			World.dtbl = {
				s = "......",
				n = World.snpc.c,
			}
			
			local wd = World.Dialogue[Language][World.snpc.i]
			if not wd then
				World.snpc.i = 0
				wd = World.Dialogue[Language][World.snpc.i]
			end
			if wd then
				World.dtbl = wd:get()
				
				if World.Dialogue[Language][World.snpc.i] then
					if World.Dialogue[English][World.snpc.i] then
						World.Dialogue[English][World.snpc.i].index = World.Dialogue[Language][World.snpc.i].index
					end
					if World.Dialogue[French][World.snpc.i] then
						World.Dialogue[French][World.snpc.i].index = World.Dialogue[Language][World.snpc.i].index
					end
				end
			end
		end
		Plr.inv:Keypressed(key)
		if key == "u" then
			World.showMap = not(World.showMap)
			
			if (Plr.inv.visible) then
				Plr.inv.visible = false
			end
		end
	end
end
