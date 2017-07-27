
Ball = Object:extend()


function Ball:new()
  self.r = 10
  self.x =  (Game.Width - self.r) / 2
  self.y =  (Game.Height - self.r) / 2
  
  self.xvel = math.random(-2,-4)
  self.yvel = math.random(1,5)
  
  self.score_sound = love.audio.newSource("assets/score.ogg", "static")
  
end 


function Ball:draw()
  love.graphics.setColor(COLORS.red)
  love.graphics.ellipse("fill", self.x, self.y, self.r, self.r)
end 

function Ball:update(p, e)
  
  self.x = self.x + self.xvel
  self.y = self.y + self.yvel
    
  
  if self.y < 0 or  self.y > Game.Height then 
    self.yvel = - self.yvel 
  end     
  
  if self.x < 0  then 
    e.score:up()
    love.audio.play(self.score_sound)
    self:reset()
  elseif self.x > Game.Width then 
    p.score:up()
    love.audio.play(self.score_sound)
    self:reset()
  end 
  
end 

function Ball:reset()
    self.x =  (Game.Width - self.r) / 2
    self.y =  (Game.Height - self.r) / 2
    
    self.xvel = math.random(-2,-4)
    self.yvel = math.random(1,5)
    love.timer.sleep(1)
end 