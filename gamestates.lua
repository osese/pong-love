
GameStates = Object:extend()

GameStates.states = {"menu", "game", "pause", "reset"}

function GameStates:new()   
  self.objects = {}
end 

function GameStates:enter()

end 

function GameStates:exit()
  
end 