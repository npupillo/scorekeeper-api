class ScoreSerializer < ActiveModel::Serializer
  attributes :id, :pscore, :round, :player_id, :game_id
  belongs_to :games
  belongs_to :players
end
