
GameState = Object:extend()

function GameState:new()   
  self.objects = {}
  self.objects.player = Player()
  self.objects.enemy = Enemy()
  self.objects.ball = Ball()
  love.graphics.setBackgroundColor(COLORS.white)
  self.created = true 
end 

function GameState:enter()
  
end 

function GameState:exit()
  
end 

function GameState:draw()
  self.objects.player:draw()
  self.objects.enemy:draw()
  self.objects.ball:draw()
end 

function GameState:update(dt)
  
  self.objects.ball:update(self.objects.player, self.objects.enemy)
  self.objects.enemy:update(self.objects.ball)
  self.objects.player:update()
  self.objects.enemy:isCollide(self.objects.ball)
  self.objects.player:isCollide(self.objects.ball)
  
  if love.keyboard.isDown("escape") then 
    statemachine:changeState("pause")
  end 
  
  if self.objects.enemy.score.s > 0 then 
    statemachine:changeState("gameover")
  end 
  if self.objects.player.score.s > 0 then 
    statemachine:changeState("win")
  end 
    
end 
