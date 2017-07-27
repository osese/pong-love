

StateMachine = Object:extend()

function StateMachine:new()
  self.currentstate = "menu"  
  self.states = {} 
  self.states.menu = MenuState()
  self.states.game = GameState()
  self.state.gameover = GameOverState()
  self.state.pause = PauseState()
  
end 

function StateMachine:changeState(state)
  if currentstate == state then 
    return 
  end 

  self.states.currentstate:exit()
  self.states.state:enter()
  
end 

