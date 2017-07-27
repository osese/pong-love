
-- simple button 

Button = Object:extend()


function Button:new(x,y,text)
  self.x = x 
  self.y = y 
  self.text = text 
end 

function Button:draw(x,y)
end 

function Button:update()
  
end 

function Button:onClick(f)
  f()
end 