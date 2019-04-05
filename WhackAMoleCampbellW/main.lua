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