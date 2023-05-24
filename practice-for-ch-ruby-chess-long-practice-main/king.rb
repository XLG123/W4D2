require_relative "piece"

class King < Piece

    attr_reader :symbol

    def initialize
        super
        @symbol = :white ? ♔ : ♚
    end

    protected 
    def move_diffs
        
    end
end