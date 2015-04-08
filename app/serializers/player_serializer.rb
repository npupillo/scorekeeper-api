class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :username, :email
  # attributes :id, :username, :email, :score_id

  has_many :gameplayers
  has_many :games
  has_many :scores
  #belongs_to :game
  #has_many :games, through: :scores

  def score_id
    object.score.id
  end

end
