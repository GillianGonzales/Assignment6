-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created By Gillian Gonzales
-- Created On April 19 2018
--
-- This program will find PI
-----------------------------------------------------------------------------------------

-- Changing Background
display.setDefault("background", 1, 1, 1 )

-- Adding Texts 
local instruction = display.newText("Put in a Number", display.contentCenterX, display.contentCenterY - 200 , native.systemFont, 75 )
instruction:setFillColor( 0, 0, 0)
instruction.id = "instructions"

-- Adding Textfields
local ninput = native.newTextField(display.contentCenterX, display.contentCenterY, 800, 150)
ninput.id = "user input"

-- Adding Button
local button = display.newImageRect("./assets/sprites/Button.png", 406, 157)
button.x = display.contentCenterX
button.y = display.contentCenterY + 200