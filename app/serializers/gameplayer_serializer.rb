class GameplayerSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :game
  belongs_to :player

  has_many :scores
end
