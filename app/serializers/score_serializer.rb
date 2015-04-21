class ScoreSerializer < ActiveModel::Serializer
  attributes :id, :points, :round, :gameplayer_id, :player_id

  belongs_to :gameplayer
  belongs_to :game
  belongs_to :player

  def player_id
    object.gameplayer
  end

end
