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
			if Item_Jump_Rope.count >= 5 then
				IsTalking = true
				World.dtbl = {
					s = "Okay I'm done",
					n = Varisa,
					v = "Normal",
				}
				Story.set("Fredrick_Exercise_2",true)
			else
				IsTalking = true
				World.dtbl = {
					s = "This is pretty tough...",
					n = Varisa,
					v = "Normal",
				}
				Item_Jump_Rope.count = Item_Jump_Rope.count + 1
			end
		end
	else
		IsTalking = true
		World.dtbl = {
			s = "I guess I could still do this...",
			n = Varisa,
			v = "Normal",
		}
	end
end
