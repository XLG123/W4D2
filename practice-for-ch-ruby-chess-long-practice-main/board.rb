# require_relative "piece"
require_relative "rook"
require_relative "knight"
require_relative "bishop"
require_relative "queen"
require_relative "king"
require_relative "null_piece"
require_relative "pawn"


# require 'byebug'

class Board
    def initialize
        @rows = Array.new(8) { Array.new(8,NullPiece) }
        place_pieces    
    end

    
    def place_pieces
        back_ranks = [Rook,Knight,Bishop,Queen,King,Bishop,Knight,Rook]
        pawn_row = [Pawn,Pawn,Pawn,Pawn,Pawn,Pawn,Pawn,Pawn]
        

        @rows.each_with_index do |row, idx_row|

            if idx_row == 0 || idx_row == 1
                color = :black
            elsif idx_row == 6 || idx_row == 7
                color = :white
            end

            row.each_with_index do |col, idx_col|

                if idx_row == 0 || idx_row == 7
                    row[idx_col] = back_ranks[idx_col].new(color, self, [idx_row, idx_col])
                    
                elsif idx_row == 1 || idx_row == 6
                    row[idx_col] = pawn_row[idx_col].new(color, self, [idx_row, idx_col])
                
                end

                
            end
        end

    end

    def [](position)
        row, col = position
        @rows[row][col]
    end

    def []=(position,value)
        row, col = position
        @rows[row][col] = value
    end

    def move_piece(start_pos,end_pos)
        row_s, col_s = start_pos
        row_e, col_e = end_pos
        raise "No piece at start_pos" if self[[row_s, col_s]] == NullPiece
        # raise "Cannot move to end_pos" if self[[row_e, col_e]] != NullPiece
        self[[row_s, col_s]], self[[row_e, col_e]] = self[[row_e, col_e]], self[[row_s, col_s]]
    end

end