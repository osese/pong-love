require "Button"

PauseState = Object:extend()

function PauseState.callback_resume()
  statemachine:changeState("game")
end

function PauseState.callback_newgame()
  statemachine:newState("game")
end

function PauseState.callback_exit()
  love.event.quit()
end


function PauseState:new()    
  self.resume_button = Button(100,100, "Resume")
  self.newgame_button = Button(100,200, "New Game")
  self.exit_button = Button(100,300, "Exit")
end 

function PauseState:enter()
  
end 

function PauseState:exit()
  
end 

function PauseState:draw()
  self.resume_button:draw()
  self.newgame_button:draw()
  self.exit_button:draw()
end 


function PauseState:update(dt)
  self.resume_button:update(PauseState.callback_resume)
  self.newgame_button:update(PauseState.callback_newgame)
  self.exit_button:update(PauseState.callback_exit)
end 