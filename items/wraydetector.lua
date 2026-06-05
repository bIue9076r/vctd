Item_WRayDetector = Item.new(Wray)
Item_WRayDetector.name = "W Ray Detector"
Item_WRayDetector.save = "DAY2"

Item_WRayDetector.last = -1
Item_WRayDetector.count = 0

function Item_WRayDetector:act(key)
	if not((key == "return") or (key == "e")) then
		return
	end

	-- Experiment 3
	if Story.get("Jami_Experiment_3_1") then
		
		return
	end

	-- Experiment 2
	if Story.get("Jami_Experiment_2_1") then
		local m = MaptoN()
		if m == self.last then
			IsTalking = true
			World.say("I've used this here", Varisa, "Normal")
		else
			IsTalking = true
			World.say("It says "..string.format("%0.2f",Mood.str()), Varisa, "Normal")
			self.last = m
			
			if self.count < 2 then
				self.count = self.count + 1
			else
				self.count = 0
				Story.set("Jami_Experiment_2_2",true)
			end
		end
		return
	end

	-- Experiment 1
	local m = MaptoN()
	if m == self.last then
		IsTalking = true
		World.say("I've used this here", Varisa, "Normal")
	else
		IsTalking = true
		World.say("It says "..string.format("%0.2f",Mood.str()), Varisa, "Normal")
		self.last = m

		if self.count < 2 then
			self.count = self.count + 1
		else
			self.count = 0
			Story.set("Jami_Experiment_1_2",true)
		end
	end
end
