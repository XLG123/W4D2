require "singleton"

class NullPiece < Piece
    # include Singleton
   
    def moves 
    end 

    # def symbol
    #     ": :"
    # end

    def inspect
        p "hello world " 
        # symbol
    end 
end