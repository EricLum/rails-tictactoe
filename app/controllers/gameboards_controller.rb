class GameboardsController < ApplicationController


  def index
    @gameBoards = Gameboard.all
  end

  def show
    @gameBoard = Gameboard.find_by_id(params[:id])
  end

  def create
    @gameBoard = Gameboard.new
    @gameBoard = Gameboard.create(player_one: params[:gameboard][:player_one], player_two: params[:gameboard][:player_two])
    redirect_to gameboards_path
  end

  def update
    
  end

  def destroy

  end



end
