class GamesController < ApplicationController

  def index
    @games = Game.all
    render json: @games, status: 200
  end

  def show
    @game = Game.find(params[:id])
    render json: @game, status: 200
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      render json: @game, status: :created
    else
      render json: @game.errors, status: :unprocessable_entity
    end    
  end

  def update
    @game = Game.find(params[:id])
    if @game.update(game_params)
      render json: @game, status: 200
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    head :no_content
    #return all games
    #@games = Game.all
    #render json: @games, status: 202
  end

  private

    def game_params
      params.require(:game).permit(:name, :start_date, :end_date, :status)
    end

end