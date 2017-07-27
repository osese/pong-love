require "Button"
require "Label"

GameOverState = Object:extend()

function GameOverState.callback_menu()
  statemachine:changeState("menu")
end 

function GameOverState.callback_newgame()
  statemachine:newState("game")
end

function GameOverState.callback_exit()
  love.event.quit()
end


function GameOverState:new()   
  self.gameover = Label(100,50, "Game Over !! ")
  self.newgame_button = Button(100,150, "New Game")
  self.menu_button = Button(100, 250, "Main Menu")
  self.exit_button = Button(100,350, "Exit")
end 


function GameOverState:draw()
  self.gameover:draw()
  self.newgame_button:draw()
  self.menu_button:draw()
  self.exit_button:draw()
end 

function GameOverState:update(dt)
  self.newgame_button:update(GameOverState.callback_newgame)
  self.menu_button:update(GameOverState.callback_menu)
  self.exit_button:update(GameOverState.callback_exit)
end 
