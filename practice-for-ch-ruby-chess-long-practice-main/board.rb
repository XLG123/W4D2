require_relative "piece"
require_relative "rook"
# require_relative "knight"
# require_relative "bishop"
# require_relative "queen"
# require_relative "king"

class Board
    def initialize
        @rows = Array.new(8) { Array.new(8) }
        place_pieces    
    end

    def place_pieces
        @rows.each_with_index do |row, idx_row|
            row.each_with_index do |col, idx_col|
                if (idx_row == 0 || idx_row == 7)
                    if idx_col == 0 || idx_col == 7
                        @rows[[row, col]] = Rook.new
                    elsif idx_col == 1 || idx_col == 6
                        @rows[[row, col]] = Knight.new
                    elsif idx_col == 2 || idx_col == 5
                        @rows[[row, col]] = Bishop.new
                    elsif idx_col ==  3
                        @rows[[row, col]] = Queen.new
                    elsif idx_col == 4
                        @rows[[row, col]] = King.new
                    end
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
        raise "No piece at start_pos" if @rows[row_s][col_s].nil?
        raise "Cannot move to end_pos" if !@rows[row_e][col_e].nil?
        value = @rows[row_s][col_s]
        @rows[row_e][col_e] = value
        @rows[row_s][col_s] = nil
    end

end