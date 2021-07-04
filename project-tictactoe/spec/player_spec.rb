require 'spec_helper'
require_relative '../lib/player'

describe Player do

    it 'create player with name' do
        test_object = Player.new("Wojkly", ["X","O"].shuffle[0])
        expect(test_object.name).to eql("Wojkly")
    end
    it 'create 2 different players' do
        types = ["X","O"].shuffle
        player1 = Player.new("Wojkly", types[0])
        player2 = Player.new("Opponent", types[1])
        if player1.type == "X"
            expect(player2.type).to eql("O")
        else
            expect(player2.type).to eql("X")
        end
    end
end
