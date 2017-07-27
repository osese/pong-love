

function love.load()
  require "Game"
  
  game = Game()  
  
  love.window.setMode(Game.Width, Game.Height)
  
end 


function love.draw()
  game:draw()
end 

function love.update(dt)
  game:update(dt)
end 