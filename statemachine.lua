
require "MenuState"
require "GameState"
require "PauseState"
require "GameOverState"
require "WinState"

StateMachine = Object:extend()

function StateMachine:new()
  self.currentstate = "menu"  
  self.states = {} 
  self.states.menu = MenuState()
  self.states.game = GameState()
  self.states.gameover = GameOverState()
  self.states.pause = PauseState()
  self.states.win = WinState()
end 

function StateMachine:getCurrentState()
  return  self.states[self.currentstate] 
end 

function StateMachine:changeState(state)
  if currentstate == state then 
    return 
  end 
  self.currentstate = state
end

function StateMachine:newState(state)
  if state == "menu" then 
    self.states.menu = MenuState()
    self.currentstate = "menu"
  elseif state == "game" then 
    self.states.game = GameState()
    self.currentstate = "game"
  elseif state == "pause" then 
    self.states.pause = PauseState()
    self.currentstate = "pause"
  end 
end 

