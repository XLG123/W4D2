require_relative "piece"

class Pawn < Piece

  attr_reader :symbol

  def initialize
    super
    @symbol = :white ? ♙ : ♟
  end

  def moves
    
  end

  private
  def at_start_row?
    
  end

  def forward_dir
    
  end

  def forward_steps
    
  end

  def side_attacks
    
  end

end