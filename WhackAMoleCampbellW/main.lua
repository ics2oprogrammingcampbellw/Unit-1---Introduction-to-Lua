-- Title: Whack a mole
-- Name: Campbell W
-- Course: ICS20
-- This program places a random object on the screen. If the use clicks on it in time,
-- the score increases by 1.

display.setStatusBar(display.HiddenStatusBar)

-- Creating background
local bkg = display.newRect( 0, 0, display.contentWidth, display.contentHeight )
    display.SetStatusBar(display.HiddenStatusBar) 

    -- Setting position
    bkg.anchorX = 0
    bkg.anchorY = 0
    bkg.x = 0
    bkg.y = 0

-- Creating mole
local mole = display.newImage( "Images/mole.png" , 0, 0 )

    -- setting position
    mole.x = display.contentCenterX
    mole.y = display.contentCenterY

    mole.alpha = 0



local score
local score = 


-------------------------------------------------------------------------------------------

-- ADD LOCAL VARIABLE TO KEEP TRACK OF THE SCORE



-- ADD LOCAL TEXT OBJECT TO DISPLAY THE SCORE>


---------------------------------------------------------------------------------------------


--------------------------------------------------Functions---------------------------------

-- This function that makes the mole appear in a random (x,y) position on the screen
-- before calling the Hide function
function PopUp( )


	-- Choosing random positions on the screen between 0 and the size of the screen
	mole.x = math.random( 0, display.contentWidth )
	mole.y = math.random( 0, display.contentHeight )

	mole.alpha = 1 






































