require_relative 'die'

class Game
  attr_reader :title

  def initialize(title)
    @title = title
    @players = []
  end

  def add_player(player)
    @players << player
  end

  def play
    
    @players.each do |player|
      die = Die.new
      # if number_rolled >= 5
      #   player.wOOt
      # elsif number_rolled >= 3
      #   puts "#{player.name} was skipped"
      # else
      #   player.blam
      # end

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
        
      puts player
    end  
  end
end


