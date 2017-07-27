
GameState = Object:extend()

function GameState:new()   
  
  self.player = Player()
  self.enemy = Enemy()
  self.ball = Ball()
  love.graphics.setBackgroundColor(COLORS.white)
  self.created = true 
end 


function GameState:draw()
  self.player:draw()
  self.enemy:draw()
  self.ball:draw()
end 

function GameState:update(dt)
  
  self.ball:update(self.player, self.enemy)
  self.enemy:update(self.ball)
  self.player:update()
  self.enemy:isCollide(self.ball)
  self.player:isCollide(self.ball)
  
  if love.keyboard.isDown("escape") then 
    statemachine:changeState("pause")
  end 
  
  if self.enemy.score.s > 0 then 
    statemachine:changeState("gameover")
  end 
  if self.player.score.s > 0 then 
    statemachine:changeState("win")
  end 
    
end 
