class Score < ActiveRecord::Base
  belongs_to :gameplayer
  belongs_to :game
  belongs_to :player


  # def player
  #   self.gameplayer.player
  # end

  # def game
  #   self.gameplayer.game
  # end

end
