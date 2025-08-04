Item_Toolbox = Item.new(Toolbox)
Item_Toolbox.name = "Toolbox"
Item_Toolbox.added = false

function Item_Toolbox:act(key)
	-- Quest Item
	if not self.added then
		--Plr.inv:add(screwdriver)
		Plr.inv:add(Guitar)
		self.added = true
	end
end
