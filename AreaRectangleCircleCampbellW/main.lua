-- Title: AreaOfRectangleAndCircle
-- Name: Your Name
-- Course: ICS2O/3C
-- This program displays a colored rectangle with a border of a different color.
--It also calculates the rectangle area and displays it on the screen.
--Then i added the code to draw a circle of a different color. 
--I used the radius to calculate the area and displayed this on the iPad.


-- create my local variables
local areaText
local textsize = 50
local myRectangle
local widthOfRectangle = 350
local heightOfRectangle = 200
local AreaOfRectangle

-- set the background colour of my screen.
display.setDefault("background", 244/255, 121/255, 24/255)

-- to remove status bar
display.setStatusBar(display.HiddenStatusBar)

--draw the rectangle that is half the width and height of the screen size.
myRectangle = display.newRect(0,0, widthOfRectangle, heightOfRectangle)

-- anchor the rectangle in the top left corner of the screen and set its (x,y) position
myRectangle.anchorX = 0
myRectangle.anchorY = 0
myRectangle.x = 20
myRectangle.y = 20

-- set the width of the border
myRectangle.strokeWidth = 20

--set the colour of the rectangle
myRectangle:setFillColor(0.7, 0.1, 0.3)

-- set the colour of the border
myRectangle:setStrokeColor(0, 1, 0)

-- calculate the area
AreaOfRectangle = widthOfRectangle * heightOfRectangle

--write the area on the screen. Take into consideration the size of the font when positioning it on the screen
areaText = display.newText("The area of this rectangle with a width of \n" ..
	widthOfRectangle .. " and a height of " .. heightOfRectangle .. " is " ..
	AreaOfRectangle .. "pixels². ", 0, 0, Arial, textSize)

-- anchor the text and set its (x,y) position
areaText.anchorX = 0
areaText.anchorY = 0
areaText.x = 20
areaText.y = display.contentHeight/2

-- set the colour of the newText
areaText:setTextColor(1, 1, 1)

-------------------------------------------------------------------------------------------

-- create my local variables
local areaText2
local textsize = 50
local myCircle
local radiusOfCircle = 200
local AreaOfCircle
local Pi = 3.14159

-- set the background colour of my screen.
display.setDefault("background", 244/255, 121/255, 24/255)

-- to remove status bar
display.setStatusBar(display.HiddenStatusBar)

--draw the rectangle that is half the width and height of the screen size.
myCircle = display.newCircle

-- anchor the rectangle in the top left corner of the screen and set its (x,y) position
myCircle.anchorX = 0
myCircle.anchorY = 0
myCircle.x = 20
myCircle.y = 20

-- set the width of the border
myCircle.strokeWidth = 20

--set the colour of the rectangle
myCircle:setFillColor(0.7, 0.1, 0.3)

-- set the colour of the border
myCircle:setStrokeColor(0, 1, 0)

-- calculate the area
AreaOfCircle = radiusOfCircle * Pi

--write the area on the screen. Take into consideration the size of the font when positioning it on the screen
areaText = display.newText("The area of this rectangle with a width of \n" ..
	widthOfRectangle .. " and a height of " .. heightOfRectangle .. " is " ..
	AreaOfRectangle .. "pixels². ", 0, 0, Arial, textSize)

-- anchor the text and set its (x,y) position
areaText.anchorX = 0
areaText.anchorY = 0
areaText.x = 20
areaText.y = display.contentHeight/2

-- set the colour of the newText
areaText:setTextColor(1, 1, 1)