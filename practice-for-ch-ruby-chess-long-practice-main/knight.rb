require_relative "piece"

class Knight < Piece

    attr_reader :symbol

    def initialize
        super
        @symbol = :white ? ♘ : ♞
    end
    
    protected 
    def move_diffs
        
    end

end