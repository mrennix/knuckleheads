require_relative '../game'
require_relative '../player'

describe Game do
	before do
    @game =  Game.new("Kunckleheads")
    @initial_health = 100    
    @player  = Player.new("moe", @initial_health)
    @game.add_player(@player)
    $stdout = StringIO.new 
  end

  it "roll a 5 or 6" do
    allow_any_instance_of(Die).to receive(:roll).and_return(5)  # stub
    @game.play
    expect(@player.health).to eq(@initial_health + 15)
  end

  it "roll a 3 or 4" do
    allow_any_instance_of(Die).to receive(:roll).and_return(3)  # stub
    @game.play
    expect(@player.health).to eq(@initial_health)
  end

  it "roll a 1 or 2" do
    allow_any_instance_of(Die).to receive(:roll).and_return(1)  # stub
    @game.play
    expect(@player.health).to eq(@initial_health - 10)
  end
end
