require_relative "piece"

class Board
    def initialize
        @board = Array.new(8) { Array.new(8) }    
    end

    def [](position)
        row, col = position
        @board[row][col]
    end

    def []=(position,value)
        row, col = position
        @board[row][col] = value
    end

    def move_piece(start_pos,end_pos)
        row_s, col_s = start_pos
        row_e, col_e = end_pos
        raise "No piece at start_pos" if @board[row_s][col_s].nil?
        raise "Cannot move to end_pos" if !@board[row_e][col_e].nil?
        value = @board[row_s][col_s]
        @board[row_e][col_e] = value
        @board[row_s][col_s] = nil
    end

end