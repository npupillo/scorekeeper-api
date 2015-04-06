class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :username, :email
  
  belongs_to :game
  has_many :scores
  #has_many :games, through: :scores
end
