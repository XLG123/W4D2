require_relative "piece"
require_relative "slideable"

class Queen < Piece
    include Slideable

    def symbol
        '♛'
    end

    def inspect
        symbol
    end

    private

    def move_dirs
        
    end

end