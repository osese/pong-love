

Paddle = Object:extend()
require "Score"

function Paddle:new(x, color)
 
  self.w = 10
  self.h = 100
  self.xvel = 0
  self.yvel = 0
  self.color = color 
  self.x = x
  self.y = (Game.Height - self.h)/2
  
  self.sound = love.audio.newSource("assets/pop.ogg", "static")
  
  if self.x < Game.Width / 2 then 
    self.score = Score(Game.Width/2 - 100, 40)  -- player score
  else 
    self.score = Score(Game.Width/2 + 100, 40)  -- enemy score 
  end 
  
end 

function Paddle:draw()
  love.graphics.setColor(self.color)
  love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)
  self.score:draw()
end 


function Paddle:constraint()
  if self.y + self.yvel < 0 or self.y + self.h + self.yvel > Game.Height then 
    return false 
  end 
  return true 
end 