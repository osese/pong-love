
require "Button"

MenuState = Object:extend()

function MenuState.callback_play()
  statemachine:newState("game")
end

function MenuState.callback_exit()
  love.event.quit()
end

function MenuState:new()  
  
  self.play_button = Button(100,100, "Play")
  self.exit_button = Button(100,200, "Exit")
end 

function MenuState:enter()
  
end 

function MenuState:exit()
  
end 

function MenuState:draw()
  self.play_button:draw()
  self.exit_button:draw()

end 


function MenuState:update(dt)
  self.play_button:update(MenuState.callback_play)
  self.exit_button:update(MenuState.callback_exit)
end 