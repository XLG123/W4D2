require_relative "piece"

class NullPieces < Piece

  attr_reader :symbol

  def initialize
    super
    @symbol = " "
  end

  def moves
    
  end
  
end