class ScoresController < ApplicationController

  def index
    @scores = Score.all
    render json: @scores, status: 200
  end


  def create
    # @game = Game.find(params[:game_id])
    @score = Score.new(score_params)
    # @game.scores << @score
    if @score.save
      render json: @score, status: :created
    else
      render json: @score.errors, status: :unprocessable_entity
    end
  end

  def update
    @score = Score.find(params[:id])
    if @score.update(score_params)
      render json: @score, status: 200
    else
      render json: @score.errors, status: :unprocessable_entity
    end
  end

  private

    def score_params
      params.require(:score).permit(:pscore, :round, :player_id, :game_id)
    end

end
