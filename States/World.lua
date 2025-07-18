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
World.Dialoge = {}
-- Include Dialoge File
require("npcs/Dialoges")
require("npcs/French/Dialoges")
--

function World.nextMap(map)
	World.NextMap = map
	World.ChangeMap = true
end

function World.Draw()
	-- draw background and sprites
	drawBackgound()
	drawSprites()
	Plr.inv:drawInv()
	
	-- if talking
	drawDialoge()
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
			
			local wd = World.Dialoge[Language][World.snpc.i]
			if not wd then
				World.snpc.i = 0
				wd = World.Dialoge[Language][World.snpc.i]
			end
			if wd then
				World.dtbl = wd:get()
				
				if World.Dialoge[Language][World.snpc.i] then
					if World.Dialoge[English][World.snpc.i] then
						World.Dialoge[English][World.snpc.i].index = World.Dialoge[Language][World.snpc.i].index
					end
					if World.Dialoge[French][World.snpc.i] then
						World.Dialoge[French][World.snpc.i].index = World.Dialoge[Language][World.snpc.i].index
					end
				end
			end
		end
		Plr.inv:Keypressed(key)
	end
end
