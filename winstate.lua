require "Button"
require "Label"

WinState = Object:extend()

function WinState.callback_menu()
  statemachine:changeState("menu")
end 

function WinState.callback_newgame()
  statemachine:newState("game")
end

function WinState.callback_exit()
  love.event.quit()
end


function WinState:new()   
  self.gameover = Label(100,50, "You Win !! ")
  self.newgame_button = Button(100,150, "New Game")
  self.menu_button = Button(100, 250, "Main Menu")
  self.exit_button = Button(100,350, "Exit")
end 

function WinState:enter()
  
end 

function WinState:exit()
  
end 

function WinState:draw()
  self.gameover:draw()
  self.newgame_button:draw()
  self.menu_button:draw()
  self.exit_button:draw()
end 

function WinState:update(dt)
  self.newgame_button:update(WinState.callback_newgame)
  self.menu_button:update(WinState.callback_menu)
  self.exit_button:update(WinState.callback_exit)
end 
