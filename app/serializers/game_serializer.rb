class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :start_date, :end_date, :status

  has_many :gameplayers
  has_many :players
  has_many :scores
  #has_many :players, through: :scores
end
