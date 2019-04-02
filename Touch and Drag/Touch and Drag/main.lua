-- Touch and Drag
-- Campbell Woodside

-- hide status bar
display.setStatusBar(display.HiddenStatusBar)


-- background and characters

local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)
local yellowGirl = display.newImageRect("Images/yellowGirl.png", 150, 150)
local yellowGirlWidth = yellowGirl.width
local yellowGirlHeight = yellowGirl.height

local blueGirl = display.newImageRect("Images/blueGirl.png", 150, 150)
local blueGirlWidth = blueGirl.width
local blueGirlHeight = blueGirl.height

-- keep track of what character was touched first with boolean variables
local alreadyTouchedYellowGirl = false
local alreadyTouchedBlueGirl = false

-- set x/y positions for yellow girl
yellowGirl.x = 400
yellowGirl.y = 500

-- set x/y positions for blue girl
blueGirl.x = 300
blueGirl.y = 200

-- Function: BlueGirlListener
-- Input: touch listner 
-- output: none
-- Description: when blue girl is touched, move her
local function BlueGirlListener(touch)
	if (touch.phase == "began") then
		if (alreadyTouchedYellowGirl == false) then
			alreadyTouchedBlueGirl = true
		end
	end

	if  ( (touch.phase == "moved") and (alreadyTouchedBlueGirl == true) ) then
		blueGirl.x = touch.x
		blueGirl.y = touch.y 
	end

	if (touch.phase == "ended") then 
	    alreadyTouchedBlueGirl = false
	    alreadyTouchedYellowGirl = false 
	end
end

-- Function: YellowGirlListener
-- Input: touch listner 
-- output: none
-- Description: when Yellow girl is touched, move her
local function YellowGirlListener(touch)
	if (touch.phase == "began") then
		if (alreadyTouchedBlueGirl == false) then
			alreadyTouchedYellowGirl = true
		end
	end

	if  ( (touch.phase == "moved") and (alreadyTouchedYellowGirl == true) ) then
		yellowGirl.x = touch.x
		yellowGirl.y = touch.y 
	end

	if (touch.phase == "ended") then 
	    alreadyTouchedYellowGirl = false
	    alreadyTouchedBlueGirl = false 
	end
end


-- add the respective listeners to each object

blueGirl:addEventListener("touch", BlueGirlListener)

yellowGirl:addEventListener("touch", YellowGirlListener)
