class PiecesController < ApplicationController

  def create
    #make piece association with gameboard
    @piece = Piece.create(gameboard_id: params[:gameboard][:id], xposition: params[:piece][:xposition], yposition: params[:piece][:yposition])

    #not sure why i even have this.
    @gameBoard = Gameboard.find_by_id(params[:gameboard][:id])

    
  end

  def post

  end

end
