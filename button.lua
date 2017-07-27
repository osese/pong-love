
-- simple button 

Button = Object:extend()


function Button:new(x,y,text)
  self.x = x 
  self.y = y 
  self.t = text 
  self.font = love.graphics.newFont("assets/Boxy-Bold.ttf", 50)
  self.text = love.graphics.newText(self.font, self.t)
  self.w = self.text:getWidth()
  self.h = self.text:getHeight()
  self.color = COLORS.yellowgreen 
end 

function Button:draw(x,y)
  love.graphics.setColor(self.color)
  love.graphics.draw(self.text, self.x, self.y)
end 

function Button:update(callback)
  local x = love.mouse.getX()
  local y = love.mouse.getY()
  
 if x < self.x + self.w and
    x > self.x and 
    y < self.y + self.h and 
    y > self.y then 
      self.color = COLORS.blue 
    if love.mouse.isDown(1) then 
      callback()
    end 
    
  else 
    self.color = COLORS.navyblue 
  end 
  
end 

