class PlayersController < ApplicationController

  #UNcomment so players are not visible at players#index & players#show
  #before_filter :authenticate, only: [:index, :show]

  def sign_in
    @player = Player.find_by(email: params[:email])
    if @player && @player.authenticate(params[:password])
      render json: { token: @player.token }
    else
      head :unauthorized
    end
  end

  def index
    @players = Player.all
    render json: @players, status: 200
  end

  def show
    @player = Player.find(params[:id])
    render json: @player, status: 200
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      render json: @player, status: :created
    else
      render json: @player.errors, status: :unprocessable_entity
    end
  end

  def update
    @player = Player.find(params[:id])
    if @player.update(player_params)
      render json: @player, status: 200
    else
      render json: @player.errors, status: :unprocessable_entity
    end
  end

  private

    def player_params
      params.require(:player).permit(:username, :email, :password, :token)
    end
end
