require_relative "piece"

class Bishop < Piece

    attr_reader :symbol

    def initialize
        super
        @symbol = :white ? ♗ : ♝
    end

    private 
    def move_dirs
    end
end