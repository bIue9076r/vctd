Item_Jump_Rope = Item.new(Jump_rope_held)
Item_Jump_Rope.name = "Jump Rope"
Item_Jump_Rope.save = "DAY1"

Item_Jump_Rope.count = 0

function Item_Jump_Rope:act(key)
	-- Quest Item
	-- Exercise Somehow
	if (not Story.get("Fredrick_Exercise_2")) and (Day == 1) then -- incomplete quest
		local present = false

		for i,v in pairs(Map.npcs) do
			if v.f == "Fredrick" then
				present = true
			end
		end

		if present then
			if self.count >= 5 then
				IsTalking = true
				World.say("Okay I'm done", Varisa, "Normal")
				Story.set("Fredrick_Exercise_2",true)
			else
				IsTalking = true
				World.say("This is pretty tough...", Varisa, "Normal")
				self.count = self.count + 1
			end
		end
	else
		IsTalking = true
		World.say("I guess I could still do this...", Varisa, "Normal")
	end
end
