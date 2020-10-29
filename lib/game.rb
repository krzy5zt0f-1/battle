require_relative  'player'
 class Game
   attr_reader :player1, :player2
   def initialize(player1_instance, player2_instance)
     @player1 = player1_instance
     @player2 = player2_instance
   end

   def attack_player1
     @player1.receive_damage
   end

   def attack_player2
     @player2.receive_damage
   end
 end
