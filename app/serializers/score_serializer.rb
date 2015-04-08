class ScoreSerializer < ActiveModel::Serializer
  attributes :id, :points, :round, :gameplayer_id, :player_id

  belongs_to :gameplayer

  def player_id
    object.player.id
  end

end
