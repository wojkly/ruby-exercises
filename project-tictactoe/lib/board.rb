
require_relative '../lib/player'

class Board
    attr_reader :fields
    def initialize
        @fields = Array.new(9," ")
        @moves = 0
    end

    def move(player, pos)
        if is_viable?(pos)
            @fields[pos] = player.type
        else
            false
        end
    end

    def game_finished?
        winner = get_winner
        if winner.nil?
            if board_full?
                puts "Game drawn"
                return true
            else
                return false
            end
        else
            puts "Game won by player #{winner}"
            return true
        end

    end

    def get_winner
        (0...3).each do |index|
            if @fields[3 * index] != " " && @fields[3 * index] == @fields[3 * index + 1] && @fields[3 * index] == @fields[3 * index + 2]
                return @fields[3 * index]
            end
            if @fields[index] != " " &&  @fields[index] == @fields[index + 3] && @fields[index] == @fields[index + 6]
                return @fields[index]
            end
        end
        if @fields[0] != " " && @fields[0] == @fields[4] && @fields[0] == @fields[8]
            return @fields[0]
        end
        if @fields[2] != " " && @fields[2] == @fields[4] && @fields[2] == @fields[6]
            return @fields[2]
        end
        nil
    end

    def board_full?
        @moves == 9
    end


    def is_viable?(pos)
        unless pos.nil?
            0 <= pos && pos < 9 && @fields[pos] == " "
        end
    end

    def print
        puts "#{@fields[0]} | #{@fields[1]} | #{@fields[2]}"
        puts "---------"
        puts "#{@fields[3]} | #{@fields[4]} | #{@fields[5]}"
        puts "---------"
        puts "#{@fields[6]} | #{@fields[7]} | #{@fields[8]}"
    end
end