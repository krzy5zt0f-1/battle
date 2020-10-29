class Player
 attr_reader :name, :hp
 DEFAULT_HP = 60
 def initialize(name)
   @name = name
   @hp = DEFAULT_HP
 end

 def receive_damage
   @hp -= 10
 end
 
 def attack(player_to_attack)
   player_to_attack.receive_damage
 end
end
