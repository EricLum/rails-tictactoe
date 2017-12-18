class PiecesController < ApplicationController

  def create
    @piece = Piece.create(gameboard_id: params[:gameboard][:id], xposition: params[:piece][:xposition], yposition: params[:piece][:yposition])
    @gameBoard = Gameboard.find_by_id(params[:gameboard][:id])
    
  end

  def post

  end

end
