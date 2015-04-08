class Player < ActiveRecord::Base
  has_many :gameplayers
  has_many :games, through: :gameplayers
  has_many :scores, through: :gameplayers


  # def score
  #   self.gameplayer.score
  # end


  # def game_scores(game_name)
  #   self.gameplayers.where(game.name = game_name)
  # end
end
