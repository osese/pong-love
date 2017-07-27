
Object = require "classic"
require "Paddle"
require "Player"
require "Enemy"
require "Ball"
require "Colors"
require "statemachine"

Game = Object:extend()
Game.Width = 640 
Game.Height = 480


Game.reset = function()

  game = Game()

end 

function Game:new()

  statemachine = StateMachine()
end 


function Game:update(dt)
  statemachine:getCurrentState():update(dt)
end 


function Game:draw()
  statemachine:getCurrentState():draw()
end 