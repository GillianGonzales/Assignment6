-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created By Gillian Gonzales
-- Created On April 19 2018
--
-- This program will find PI
-----------------------------------------------------------------------------------------

-- Making Varaibles
local n
local loop
local one 
local answer
local codeAnswer


-- Changing Background
display.setDefault("background", 1, 1, 1 )

-- Adding Texts 
local instruction = display.newText("Put in a Number", display.contentCenterX, display.contentCenterY - 200 , native.systemFont, 75 )
instruction:setFillColor( 0, 0, 0)
instruction.id = "instructions"

local answerText = display.newText("=", display.contentCenterX, display.contentCenterY + 400 , native.systemFont, 75 )
answerText:setFillColor( 0, 0, 0)
answerText.id = "Answer Text"

-- Adding Textfields
local ninput = native.newTextField(display.contentCenterX, display.contentCenterY, 800, 150)
ninput.id = "user input"

-- Adding Button
local button = display.newImageRect("./assets/sprites/Button.png", 406, 157)
button.x = display.contentCenterX
button.y = display.contentCenterY + 200
button.id = "button"

-- Adding Functions
local function calculatePi( event )
	-- This Function will find PI
	n = ninput.text
	answerText.text = answer

	if string.match(n, "%.") then
		answer = "Invaild Answer"
	elseif tonumber(n) == nil then
		answer = "Invaild Answer"
	elseif tonumber(n) == 0 then
		codeAnswer = ((-1)^n)/(2*n+1)
	elseif tonumber(n) > 0 then
		for loop = 1,n do
			codeAnswer = ((-1)^n)/(2*n+1)
			n = n + 1
		end
	end
	codeAnswer = tonumber(codeAnswer) * 4
	answer = codeAnswer
	print(answer)
end

button:addEventListener("touch", calculatePi)
