class GameplayersController < ApplicationController
  before_action :set_gameplayer, only: [:show, :update, :destroy]

  # GET /gameplayers
  # GET /gameplayers.json
  def index
    @gameplayers = Gameplayer.all

    render json: @gameplayers
  end

  # GET /gameplayers/1
  # GET /gameplayers/1.json
  def show
    render json: @gameplayer
  end

  # POST /gameplayers
  # POST /gameplayers.json
  def create
    @gameplayer = Gameplayer.new(gameplayer_params)

    if @gameplayer.save
      render json: @gameplayer, status: :created, location: @gameplayer
    else
      render json: @gameplayer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /gameplayers/1
  # PATCH/PUT /gameplayers/1.json
  def update
    @gameplayer = Gameplayer.find(params[:id])

    if @gameplayer.update(gameplayer_params)
      head :no_content
    else
      render json: @gameplayer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /gameplayers/1
  # DELETE /gameplayers/1.json
  def destroy
    @gameplayer.destroy

    head :no_content
  end

  private

    def set_gameplayer
      @gameplayer = Gameplayer.find(params[:id])
    end

    def gameplayer_params
      params.require(:gameplayer).permit(:game_id, :player_id)
    end
end
