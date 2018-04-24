require_relative 'die'
require_relative 'game_turn'
require_relative 'treasure_trove'

class Game
  attr_reader :title

  def initialize(title)
    @title = title
    @players = []
    puts "Welcome to #{title}!"
  end

  def add_player(player)
    @players << player
    puts player
  end

  def play(rounds)
    TreasureTrove::print_treasures
    puts "\n*** Starting play! ***"
    1.upto(rounds) do |round|
      puts "\nRound #{round}:"
      @players.each do |player|
        GameTurn.take_turn(player)
      end
    end  
  end

  def print_players(players)
    players.each do |player|
      puts "#{player.name} (#{player.health})"
    end
  end

  def print_stats
    strong_players, wimpy_players = @players.partition { |player| player.strong? }
    puts "\n#{title} Statistics"
    puts "\n#{strong_players.size} strong players"
    print_players(strong_players)
    puts "\n#{wimpy_players.size} wimpy players"
    print_players(wimpy_players)

    @players.sort.each do |player|
      puts "\n#{player.name}'s point totals:"
      puts "#{player.points} grand total points."
    end

    puts "\n#{title} High Scores:"
    @players.sort.each do |player|
      puts "#{player.name.ljust(20, '.')} #{player.score}"
    end
  end
end