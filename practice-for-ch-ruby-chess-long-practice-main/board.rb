require_relative "piece"

class Board
    def initialize
        @board = Array.new(8){Array.new(8,Piece.new)}    
        set_up_board
    end

    def [](position)
        row, col = position
        @board[row][col]
    end

    def[]=(position,value)
        row, col = position
        @board[row][col] = value
    end

    def move_piece(start_pos,end_pos)
        row,col = start_pos
        raise "No piece at start_pos" if @board[row][col].empty?
        raise "Cannot move to end_pos" if @board[row][col].empty

    end

end