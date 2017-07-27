
Score = Object:extend()

function Score:new(x,y)
  self.s = 0 
  self.x = x 
  self.y = y 
  self.font = love.graphics.newFont("assets/Boxy-Bold.ttf", 50)
  self.text = love.graphics.newText(self.font, self.s)
end 

function Score:up()
  self.s = self.s + 1
  self.text:set(self.s)
end 

function Score:draw() 
  --love.graphics.print(self.text, self.x, self.y)
  --love.graphics.draw(self.s, self.x , self.y)
  love.graphics.draw(self.text, self.x, self.y)
end 