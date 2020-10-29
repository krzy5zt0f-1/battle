require_relative  'player'
 class Game
   def attack(player_to_attack)
     player_to_attack.receive_damage
   end
 end
