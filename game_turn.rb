require_relative 'die'
require_relative 'treasure_trove'
require_relative 'player'

module GameTurn
  def self.take_turn(player)
    die = Die.new

    case die.roll
    when 1..2
      player.blam
    when 3..4
      puts "#{player.name} was skipped"
    when 5..6
      player.wOOt
    else
      puts "invalid dice roll"
    end
    find_treasure(player)

  end

  def self.find_treasure(player)
    treasure = TreasureTrove::TREASURES.sample
    player.found_treasure(treasure)
  end
  
end