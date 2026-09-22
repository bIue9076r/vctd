Item_Pudding = Item.new(Pudding_held)
Item_Pudding.name = "Pudding"
Item_Pudding.save = "DAY1"

Item_Pudding.count = 0

function Item_Pudding:act(key)
	if key == "q" then
		World.say("mmm", Varisa, "Normal")
		IsTalking = true
		self.count = self.count + 1
		if self.count >= 5 then
			-- Plr.inv:remove(self)
		end
	end
end
