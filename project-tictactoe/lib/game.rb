require_relative '../lib/player'
require_relative '../lib/board'

class Game

    def initialize
        @board = Board.new
    end

    def start_game
        puts "Starting game"
        players = get_player_names
        current_player = 0
        @board.print
        until @board.game_finished?
            puts "Player #{players[current_player].name}, your turn:"
            position = gets.to_i
            until @board.move(players[current_player], position)
                puts "Wrong position, try again:"
                position = gets.to_i
            end
            current_player = (current_player + 1) % 2
            @board.print
        end
    end

    private
    def get_player_names
        puts "Hi player 1, enter your name:"
        name1 = gets.strip
        puts "Hi player 2, enter your name:"
        name2 = gets.strip

        types = ["X","O"].shuffle

        [Player.new(name1, types[0]), Player.new(name2, types[1])]
    end
end