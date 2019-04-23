-- Title: Day #19
-- Name: Campbell Woodside
-- Course: ICS20/3C
-- variables for the timer
local totalSeconds = 10
local secondsLeft = 10
local clockText
local countDownTimer

local lives = 1
local heart1
local heart2
local heart3
local heart4

--*** ADD LOCAL VARIABLE FOR: INCORRECT OBJECT, POINTS OBJECTS, POINTS
local incorrectObject

local correctObject

local score = 0
-------------------------------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
-------------------------------------------------------------------------------------------------------------


local function UpdateTime()

	--decrement the number of seconds
	secondsLeft = secondsLeft - 1

	-- display the number of seconds left in the clock object
	clockText.text = secondsLeft .. ""

	if (secondsLeft == 0 ) then
		-- reset the number of seconds left 
		secondsLeft = totalSeconds
		lives = lives - 1

		--*** IF THERE AND NO LIVES LEFT, PLAY A LOSE SOUND, SHOW A LOSE IMAGE
		-- AND CANCEL THE TIMER REMOVE THE THIRD HEART BY MAKING IT INVISIBLE
		if (lives == 4) then
			heart4.isVisible = false
		end
		if (lives == 3) then
			heart3.isVisible = false
		end
		if (lives == 2) then
			heart2.isVisible = false
		end
		if (lives == 1) then
			heart1.isVisible = false

			UpdateTime()
		end
	end
end

-- function that calls the timer
local function StartTimer()
	-- create a countdown timer that loops infinitely
	countDownTimer = timer.performWithDelay( 2000, UpdateTime)
end

-----------------------------------------------------------------------------------------------------------------
-- OBJECT CREATION
-----------------------------------------------------------------------------------------------------------------


-- create the lives to display on the screen
heart1 = display.newImageRect("Images/heart.png", 100, 100)
heart1.x = display.contentWidth * 7 / 8
heart1.y = display.contentHeight * 1 / 7

heart2 = display.newImageRect("Images/heart.png", 100, 100)
heart2.x = display.contentWidth * 6 / 8
heart2.y = display.contentHeight * 1 / 7