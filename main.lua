-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Mr. Coxall
-- Created on: Jan 2018
-- 
-- This file makes an object scroll across the screen
-----------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- local variables to this entire file
local scrollSpeed = 3

-- background image with width and height
local backgroundImage = display.newImageRect("./assets/textures/background.png", 2048, 1536)
backgroundImage.x = display.contentCenterX
backgroundImage.y = display.contentCenterY
backgroundImage.ID = "winter background image"

-- character image with width and height
local snowman = display.newImageRect("./assets/sprites/SnowMan.png", 193, 210)
snowman.x = 0
snowman.y = display.contentHeight - 200 -- note I am using not the center but the height of the diaplay
snowman.ID = "snowman"

local function MoveImage(event)
	-- add the scroll speed to the x-value of the image
    snowman.x = snowman.x + scrollSpeed
    print( display.fps )  -- note this displays how fast the current refresh is
end

-- MoveShip will be called at program start over and over (60 frames or times per second)
Runtime:addEventListener("enterFrame", MoveImage)