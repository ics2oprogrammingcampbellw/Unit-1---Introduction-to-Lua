-- Title: Interacting Objects 2
-- Name: CampbellW
-- Course

-- hide status bar
display.setStatusBar(display.HiddenStatusBar)

-- load physics
local physics = require("physics")

-- start physics
physics.start()

------------------------------------------------------------------------------------------------------------------
-- OBJECTS
------------------------------------------------------------------------------------------------------------------

-- Ground
local ground = display.newImage("ground.png", 0, 0)
ground.y = display.contentHeight/1
ground.x = display.contentWidth/2

-- Change the width to be the width of the screen
ground.width = display.contentWidth

-- Add to physics
physics.addBody(ground, "static", {friction=0.5, bounce=0.3})

local beam = display.newImage("beam.png", 0, 0)

-- set x and y position
beam.x = display.contentCenterX/5
beam.y = display.contentCenterY*1.65

beam.width = display.contentWidth/2
beam.height = display.contentHeight/10

-- rotate beam -60 degrees so its on an angle
beam:rotate(45)

-- send it to the back layer
beam:toBack()

-- add to physics
physics.addBody(beam, "static", {friction=0.5, bounce=0.3})

--create bkg
local bkg = display.newImage("physics/bkg.png", 0, 0)

   -- set the x and y position
   bkg.x = display.contentCenterX
   bkg.y = display.contentCenterY

   beam.width = display.contentWidth
   beam.height = display.contentHeight

   -- send to back
   bkg: toBack()
--------------------------------------------------------------------------
-- FUNCTIONS
--------------------------------------------------------------------------

-- create the first baLL
local function firstBall()
    -- first ball
   	local ball = display.newImage("ball.png", 0, 0)

   	-- add physics
   	physics.addBody(ball, {density=1.0, friction=0.5, bounce=0.3, radius=25})
   end
 end
   	
----------------------------------------------------------------------------------------------------------------------

local function secondBall()

	local ball = display.newImage("ball2.png", 0, 0)

	-- add physics
	physics.addBody(ball2, {density=1.0, friction=1.0, bounce=0.3, radius=12.5})

	ball2.width = 0.5
	ball2.height = 0.5
end

----------------------------------------------------------------------------------------------------------------------------------------------------
-- Timer Delays Balls
----------------------------------------------------------------------------------------------------------------------------------------------------

timer.performWithDelay( 0, Ball)
timer.performWithDelay( 500, secondBall)


































