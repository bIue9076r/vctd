Item_WRayDetector = Item.new(Crucifix)
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
		if m == Item_WRayDetector.last then
			IsTalking = true
				
			World.dtbl = {
				s = "I've used this here",
				n = Varisa,
				v = "Normal",
			}
		else
			IsTalking = true
			World.dtbl = {
				s = "It says "..(Mood.str()),
				n = Varisa,
				v = "Normal",
			}
			
			Item_WRayDetector.last = m
			
			if Item_WRayDetector.count < 2 then
				Item_WRayDetector.count = Item_WRayDetector.count + 1
			else
				Item_WRayDetector.count = 0
				Story.set("Jami_Experiment_2_2",true)
			end
		end
		return
	end

	-- Experiment 1
	local m = MaptoN()
	if m == Item_WRayDetector.last then
		IsTalking = true
			
		World.dtbl = {
			s = "I've used this here",
			n = Varisa,
			v = "Normal",
		}
	else
		IsTalking = true
		World.dtbl = {
			s = "It says "..(Mood.str()),
			n = Varisa,
			v = "Normal",
		}
		Item_WRayDetector.last = m

		if Item_WRayDetector.count < 2 then
			Item_WRayDetector.count = Item_WRayDetector.count + 1
		else
			Item_WRayDetector.count = 0
			Story.set("Jami_Experiment_1_2",true)
		end
	end
end
