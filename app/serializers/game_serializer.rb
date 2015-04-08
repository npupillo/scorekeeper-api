class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :start_date, :end_date, :status

  # has_many :gameplayers
  has_many :players
  # has_many :scores
  #has_many :players, through: :scores

  # def players
  #   gameplayers = Gameplayer.where(game_id: object.id)
  #   gameplayers.each { |g|
  #     binding.byebug
  #   }

  # end


end
