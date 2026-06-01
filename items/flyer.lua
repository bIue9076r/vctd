Item_Flyer = Item.new(Flyer)
Item_Flyer.name = "Flyer"
Item_Flyer.save = "DAY1"

Item_Flyer.show = true

-- custom display
function Item_Flyer:draw(x,y)
	local x = x or Plr.x
	local y = y or Plr.y
	local Tx = (SCREEN_X/24)
	local Ty = (SCREEN_Y/16)
	local img, psx, psy
	img = image.getImage(CtS[self.i])
	psx = (((x*25) + 25)/(600))
	psy = (((y*25) + 25)/(400))
	love.graphics.draw(
		img,
		SCREEN_X*psx,
		SCREEN_Y*psy,
		0,
		Tx/img:getWidth(),
		Ty/img:getHeight()
	)
	
	if self.show then
		psx = ((((x+2)*25) + 25)/(600))
		psy = ((((y+2)*25) + 25)/(400))
		love.graphics.draw(
			img,
			SCREEN_X*psx,
			SCREEN_Y*psy,
			0,
			Tx/img:getWidth(),
			Ty/img:getHeight()
		)
	end
end

function Item_Flyer:act(key)
	if key == "l" then
		self.show = not(self.show)
	end
	
end
