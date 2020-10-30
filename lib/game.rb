require_relative  'player'
 class Game
   attr_reader :player1, :player2, :current_turn
   def initialize(player1_instance, player2_instance)
     @player1 = player1_instance
     @player2 = player2_instance
     @current_turn = true
   end

   def attack
     @current_turn ? @player2.receive_damage : @player1.receive_damage
   end

   def switch
    @current_turn = !@current_turn
   end
   
   def self.set_a_game(player1_instance, player2_instance)
      @current_game = Game.new(player1_instance, player2_instance)
   end

   def self.instance_of_game
     @current_game
   end
 end
