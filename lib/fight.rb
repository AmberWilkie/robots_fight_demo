class Robot
  attr_accessor :arms, :metal, :name, :fight_points, :location

  def initialize(attrs = {})
    @arms = 0
    @metal = attrs[:metal]
    @name = attrs[:name]
    @fight_points = 0
    @location = 0
  end

  def upgrade
    @arms += 1
  end

  def help_mankind
    @fight_points -= 1
  end

  def fly
    @location += 1
  end

end

def fight(robot1, robot2)
  # puts "Robot 1's name: #{robot1.name}, Robot 2's name: #{robot2.name}"
  if robot1.arms > robot2.arms
    robot1.fight_points += 1
    "#{robot1.name} wins the fight!"
  elsif robot2.arms > robot1.arms
    robot2.fight_points += 1
    "#{robot2.name} wins the fight!"
  else
    'Robots tie!'
  end

end

def champion_robot(robot1, robot2)
  if robot1.fight_points > robot2.fight_points
    puts "#{robot1.name} is the champion!"
  elsif robot2.fight_points > robot1.fight_points
    puts "#{robot2.name} is the champion!"
  else
    puts "Nobody is the champion"
  end
end
