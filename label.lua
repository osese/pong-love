-- label.lua


-- simple Label 

Label = Object:extend()

function Label:new(x,y,text)
  self.x = x 
  self.y = y 
  self.t = text 
  self.font = love.graphics.newFont("assets/Boxy-Bold.ttf", 50)
  self.text = love.graphics.newText(self.font, self.t)
  self.w = self.text:getWidth()
  self.h = self.text:getHeight()
  self.color = COLORS.yellowgreen 
end 

function Label:draw(x,y)
  love.graphics.setColor(self.color)
  love.graphics.draw(self.text, self.x, self.y)
end 
