class Score < ActiveRecord::Base
  belongs_to :gameplayer
  belongs_to :game
  belongs_to :score

  def player
    self.gameplayer.player
  end

end
