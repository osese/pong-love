
Object = require "classic"
require "Paddle"
require "Player"
require "Enemy"
require "Ball"
require "Colors"

Game = Object:extend()
Game.Width = 640 
Game.Height = 480


Game.reset = function()

  game = Game()

end 

function Game:new()
  self.player = Player()
  self.enemy = Enemy()
  self.ball = Ball()
  love.graphics.setBackgroundColor(COLORS.grey)
end 

function Game:update(dt)
  self.ball:update()
  self.enemy:update(self.ball)
  self.player:update()
  self.enemy:isCollide(self.ball)
  self.player:isCollide(self.ball)
end 

function Game:enemyScore()
  self.enemy.score:up()
end

function Game:playerScore()
  self.player.score:up()
end

function Game:draw()
  self.player:draw()
  self.enemy:draw()
  self.ball:draw()
end 