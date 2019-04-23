-- Title: Math Fun
-- Name: Campbell Woodside
-- Course: ICS20

local correctanswer
local randomNumber1
local randomNumber2

local userAnswer

local correctanswer

local incorrectObject

local randomOperator
local totalSeconds = 10
local secondsLeft = 10
local clockText
local countDownTimer

local lives = 2
local heart1
local heart2



local incorrectObject

local correctObject

local score = 0

local questionObject


local function AskQuestion()

    -- generate  2 random numbers between a max. and a min. number
    randomOperator = math.random(1,2)

    randomNumber1 = math.random(0, 10)

    randomNumber2 = math.random(0, 10)

    -- create question in text object

    if (randomOperator == 1) then



    	-- calculate the correct answer

    	correctAnswer = randomNumber1 + randomNumber2

        questionObject.text = randomNumber1 .. " + " .. randomNumber2 .. " = "

    -- otherwise if the random operator is 2, do subtraction

    elseif (randomOperator == 2) then

    	-- calculate the correct answer

    	correctAnswer = randomNumber1 - randomNumber2


    	-- create question in text object

    	questionObject.text = randomNumber1 .. "-" .. randomNumber2 .. " = " 
    end
end

local function HideCorrect()
    correctObject.isVisible = false
    AskQuestion()
end

local function HideIncorrect()
    incorrectObject.isVisible = false
    AskQuestion()
end
-- function that calls the timer
local function StartTimer()
    -- create a countdown timer that loops infinitely
    countDownTimer = timer.performWithDelay( 1000, UpdateTime,0)
end

local function NumericFieldListener( event )
    -- User begins editing "numericField"
    if ( event.phase == "began" ) then

       --clear text field
       event.target.text = ""

    elseif event.phase == "submitted" then
        --when the answer is submitted (enter key is pressed) set user input to user input to user's answer
        userAnswer = tonumber(event.target.text)
        -- if the users answer and the correct answer are the same:
        

         if (userAnswer == correctAnswer) then
            correctObject.isVisible = true
            timer.performWithDelay(2000, HideCorrect)
            event.target.text = ""
            score = score + 1

        elseif (userAnswer ~= correctAnswer) then
            incorrectObject.isVisible = true
            timer.performWithDelay(2000, HideIncorrect)
            lives = lives - 1    
            event.target.text = ""
        end
    end
end



local function UpdateTime()

	secondsLeft = secondsLeft - 1
	clockText.text = secondsLeft .. ""

	if (secondsLeft == 0 ) then
		secondsLeft = totalSeconds
		lives = lives - 1


		if (lives == 2) then
			heart2.isVisible = false

		if (lives == 1) then

			heart2.isVisible = false
			numericField.isVisible = false
			scoreText.isVisible = false
		end
	end
end



local function HideCorrect()
	correctObject.isVisible = false
	AskQuestion()
end

local function HideIncorrect()
	incorrectObject.isVisible = false
end

local function ResetTimer()
	secondsLeft = 10
end
-----------------------------------------------------------------------------------------------------------------
-- OBJECT CREATION
-----------------------------------------------------------------------------------------------------------------
correctObject = display.newText( "Correct!", display.contentWidth/2, display.contentHeight*2/3, nil, 50)
correctObject:setTextColor(100/255, 142/255, 198/255)
correctObject.isVisible = false

incorrectObject = display.newText("incorrect!", display.contentWidth/2, display.contentHeight*2/3, nil, 50)
incorrectObject:setTextColor(155/255, 42/255, 198/255)
incorrectObject.isVisible = false


questionObject = display.newText( "", display.contentWidth/3, display.contentHeight/2, nil, 50)
questionObject:setTextColor(155/255, 42/255, 198/255)


clockText = display.newText( score, display.contentWidth/3, display.contentHeight/6, nil, 50)


heart1 = display.newImageRect("Images/heart.png", 100, 100)
heart1.x = display.contentWidth * 7 / 8
heart1.y = display.contentHeight * 1 / 7


heart2 = display.newImageRect("Images/heart.png", 100, 100)
heart2.x = display.contentWidth * 6 / 8
heart2.y = display.contentHeight * 1 / 7

numericField = native.newTextField( display.contentWidth/1.8, display.contentHeight/2, 150, 80 )
numericField.inputType = "number"

numericField:addEventListener( "userInput", NumericFieldListener)



AskQuestion()
StartTimer()
