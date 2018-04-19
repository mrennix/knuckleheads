class Player
  attr_reader :health
  attr_accessor :name

  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end

  def <=>(other)
    other.score <=> score
  end

  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}."
  end

  def blam
    @health -= 10
    puts "#{@name} got blammed!"
  end

  def wOOt
    @health += 15
    puts "#{@name} got wOOted!"
  end

  def score
    @health + @name.length
  end

  def name=(new_name)
    @name = new_name.capitalize
  end

  def strong?
    @health > 100
  end

end

if __FILE__ == $0
  player = Player.new("moe")
  puts player.name
  puts player.health
  player.wOOt
  puts player.health
  player.blam
  puts player.health
end

