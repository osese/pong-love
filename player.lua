-- player.lua

Player = Paddle:extend()

function Player:new()
  Player.super.new(self, 10, COLORS.yellowgreen)
end 

--[[
function Player:draw()
  
end 
]]--

function Player:update()
  
  if self:constraint() then 
  self.y = self.y + self.yvel 
  end 
  if love.keyboard.isDown("up") then 
    self.yvel = -5 
  elseif love.keyboard.isDown("down") then 
    self.yvel = 5 
  else 
    self.yvel = 0
  end
end 

function Player:isCollide(b)
  if b.x - b.r > 0 and b.x - b.r < self.x + self.w  and b.y < self.y + self.h and b.y > self.y then 
    b.xvel = - b.xvel 
    love.audio.play(self.sound)
  end 
end 