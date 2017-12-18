class Gameboard < ApplicationRecord
  has_many :pieces

  def player_to_turn
    if self.player_turn == 1
      self.player_one
    else
      self.player_two
    end
  end

  def switch_turn
    if self.player_turn == 1
      self.player_turn = 2
    else
      self.player_turn = 1
    end
    self.save
  end

  def game_won?
    player_one_pieces = self.pieces.where(owner: self.player_one)
    player_two_pieces = self.pieces.where(owner: self.player_two)

    if player_one_pieces.where
  end

end
