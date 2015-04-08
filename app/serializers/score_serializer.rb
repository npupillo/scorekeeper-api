class ScoreSerializer < ActiveModel::Serializer
  attributes :id, :points, :round, :gameplayer_id, :player_id, :game_id

  belongs_to :gameplayer
  # belongs_to :game
  belongs_to :player

  def player_id
    object.player.id
  end

  def game_id
    object.game.id
  end

end
