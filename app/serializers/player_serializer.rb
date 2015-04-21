class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :scores
  # attributes :id, :username, :email, :score_id

  has_many :gameplayers
  has_many :games
  # has_many :scores
  # belongs_to :game
  # has_many :games, through: :scores

  def scores
    # object.gameplayers is an array, we have to iterate over that array,
    # for each object.gameplayers, we have to query for the scores of that gameplayer, and return the score's data.


    object.gameplayers.each_with_object([]) { |gameplayer, o|


      gameplayer.scores.each { |score|
        # gp = Gameplayer.where(id: score.gameplayer_id)
        game_id = Gameplayer.where(id: score.gameplayer_id).first.game_id
        o << { "id" => score.id, "points" => score.points, "game_id" => game_id }
      }
    }

  end
end
