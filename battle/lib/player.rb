class Player
  DEFAULT_HIT_POINTS = 60 
  attr_reader :name, :DEFAULT_HIT_POINTS, :hit_points
  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name 
    @hit_points = DEFAULT_HIT_POINTS
  end

  def attack(player)
    player.receive_damage
  end 

  def receive_damage
    @hit_points -= 10
  end 
end 