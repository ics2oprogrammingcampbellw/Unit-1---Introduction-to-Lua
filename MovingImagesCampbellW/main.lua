-- Title: MovingImages
-- Name: Your Name
-- Course: ICS2O/3C
-- This program...


-- hide the status bar

display.setStatusBar(display.HiddenStatusBar)

-- global variables
scrollSpeed = 5

-- background image with width and height 
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

-- character image with width and height
local beetleship = display.newImageRect("Images/beetleship.png", 200, 200)

-- set the image to be transparent
beetleship.alpha = 1

-- set the initial x and y position of beetleship
beetleship.x = 0
beetleship.y = display.contentHeight/4

-- Function: MoveShip
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the ship
local function MoveShip(event)
	-- add the scroll speed to the x-value of the ship
	beetleship.x = beetleship.x + scrollSpeed
	-- change the transparency of the ship every time it moves so that it fades out
	beetleship.alpha = beetleship.alpha + 0.01
	-- rotate ship
	beetleship:rotate(-0.2)
	end

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip)
-----------------------------------------------------------------------------------------------
-- global variables
scrollSpeed2 = -7
-- character image with width and height
local octopus = display.newImageRect("Images/octopus.png", 200, 200)

-- set the image transparency
octopus.alpha = 1

-- set the x and y position of octopus
octopus.x = 1000
octopus.y = display. contentHeight/1.5

-- Function: MoveShip
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the ship
local function MoveOctopus(event)
	-- add the scroll speed to the x-value of the ship
	octopus.x = octopus.x + scrollSpeed2
	-- change the transparency of the ship so that every time it moves it fades out
	octopus.alpha = octopus.alpha + 1
	-- rotate ship
	octopus:rotate(0.4)
	-- size
	octopus.xScale = -2
	octopus.yScale = 2


end 
-- set direction octopus is facing
octopus:scale (-1, 1)
-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveOctopus)