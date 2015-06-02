class ScoreSerializer < ActiveModel::Serializer
  attributes :id, :game_id, :player_id, :points, :player_name

  belongs_to :game
  belongs_to :player

  def player_name
    object.player.username
  end

end
