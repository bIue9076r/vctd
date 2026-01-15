Item_Toolbox = Item.new(Toolbox)
Item_Toolbox.name = "Toolbox"
Item_Toolbox.added = false
Item_Toolbox.save = "DAY1"

function Item_Toolbox:act(key)
	-- Quest Item
	if not self.added then
		if key == "e" then
			Plr.inv:add(Item_Screwdriver)
			-- Play some sort of sound
			self.added = true
		end
	end
end
