class PiecesController < ApplicationController

  def create
    #make piece association with gameboard
    @gameBoard = Gameboard.find_by_id(params[:gameboard][:id])

    if not @gameBoard.game_won?
      @piece = Piece.create(gameboard_id: params[:gameboard][:id], position: params[:piece][:position], owner: @gameBoard.player_to_turn)
      @gameBoard.switch_turn
    end

    redirect_to gameboard_path(@gameBoard)
  end

  def post

  end

end
