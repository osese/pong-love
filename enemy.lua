
Enemy = Paddle:extend()

function Enemy:new()
  Enemy.super.new(self, Game.Width - 10 - 10, COLORS.navyblue)
  self.yvel = -3
end 

function Enemy:update(b)
  self:ai(b)
  if self:constraint() then 
    self.y = self.y + self.yvel
  end 
end 

function Enemy:isCollide(b)
  if b.x + b.r > self.x  and b.y < self.y + self.h and b.y > self.y then 
    b.xvel = - b.xvel
    love.audio.play(self.sound)
  end 
end 

function Enemy:ai(b)
  local x = b.x + b.xvel 
  local y = b.y + b.yvel 

  if b.y > self.y + self.h then 
    self.yvel = 2
  elseif b.y < self.y then 
    self.yvel = -2
  else 
    self.yvel = 0
  end 

  
end 