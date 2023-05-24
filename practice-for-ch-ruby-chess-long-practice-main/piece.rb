class Piece
    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end

    def to_s
        self.color.to_s
    end

    def empty?
        self.pos.empty?
    end

    def valid_moves
        self.valid_moves
    end

    def pos=(val)
        @pos = val
    end
    
    def inspect
        symbol
    end

    private 
    def move_into_check?(end_pos)
        raise "Can't move here " if end_pos == check 
        true 
    end
end