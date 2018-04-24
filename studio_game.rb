require_relative "game"
require_relative "player"

player1 = Player.new("moe")
player2 = Player.new("larry")
player3 = Player.new("curly")

game = Game.new("Knuckleheads")
game.add_player(player1)
game.add_player(player2)
game.add_player(player3)
rounds = 3
game.play(rounds)
game.print_stats

