class Robot
  attr_accessor :metal, :arms, :cpu, :fight_points, :name

  def initialize(args={})
    @metal = args[:metal]
    @arms = args[:arms] || 0
    @cpu = args[:cpu]
    @fight_points = 0
    @name = args[:name]
  end

  def upgrade
    @arms += 1
  end

  def help_mankind
    self.fight_points -= 1
  end
end

def fight(robot1, robot2)
  if robot1.arms > robot2.arms
    robot1.fight_points += 1
    'Robot 1 wins the fight!'
  elsif robot2.arms > robot1.arms
    robot2.fight_points += 1
    'Robot 2 wins the fight!'
  else
    'Robots tie!'
  end
end

