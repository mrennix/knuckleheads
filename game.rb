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
      player.blam
      player.blam
      player.wOOt
      puts player
    end  
  end
end


