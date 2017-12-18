class PiecesController < ApplicationController

  def create
    #make piece association with gameboard
    @gameBoard = Gameboard.find_by_id(params[:gameboard][:id])

    @piece = Piece.create(gameboard_id: params[:gameboard][:id], position: params[:piece][:position], owner: @gameBoard.player_to_turn)

    #siwtch turns
    @gameBoard.switch_turn

    redirect_to gameboard_path(@gameBoard)
  end

  def post
    
  end

end
