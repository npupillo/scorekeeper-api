class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :start_date, :end_date, :status, :game_scores

  # has_many :scores

  # gather each individual score with name & score
  def game_scores
    flattened_scores = []
    object.scores.each do |score|
      flattened_scores << {'name': score.player.username, 'data': [score.points]}
    end
    # return flattened_scores
    collected_scores(flattened_scores)
  end #end game_scores

  # consolidate each player with their score array
  def collected_scores(flattened_scores)
    collected = []
    flattened_scores.each do |obj|
      obj_name = obj[:name]
      obj_data = obj[:data]
      # p obj_name + obj_data.to_s

      #  #if obj 'name' IS NOT found in new_array, push the obj into the collected array
      if collected.any? { |h| h[:name] == obj_name } == false
        # p 'NOT found: ' + obj_name + obj_data.to_s
        # p 'push obj: ' + obj_name
        collected << obj

      # #if obj 'name' IS found in new_array, push the obj_data array value to the collected array object's data array
      elsif collected.any? { |h| h[:name] == obj_name } == true
        # p 'OBJECT found: ' + obj_name + obj_data.to_s
        detected = collected.detect { |h| h[:name] == obj_name}
        # p 'push obj data: ' + obj_data.to_s
        detected[:data] << obj_data[0]
      end #if

    end #flatten_scores.each
    return collected

  end #end collected_scores
end

#display unique player names
# def players
#   object.scores.map(&:player).uniq.map(&:username)
# end

# game1.scores.map(&:points) #=> [4, 3, 1, 2, 7, 5, 9, 8]

# game1.scores.map(&:player)
# game1.scores[0].player.username #=> "Larry"

# my_array = []
# player1 = score1.player.username
# p1_point = score1.points
# my_array << {'name' => player1, 'points' => p1_points}
# game1.scores.map { |s| s.player.username + ', ' + s.points.to_s} #=> ["Larry, 4", "Curly, 3", "Moe, 1", "Jack, 2", "Larry, 7", "Curly, 5", "Moe, 9", "Jack, 8"]

# game1.scores.each do |score|
#   my_array << score.player.username
#   my_array << score.points
# end
#=> ["Larry", 4, "Curly", 3, "Moe", 1, "Jack", 2, "Larry", 7, "Curly", 5, "Moe", 9, "Jack", 8]


# game1.scores.each do |score|
#   my_array << {'name': score.player.username, 'data': score.points}
# end
# =>
  # [{:name=>"Larry", :data=>4},
  # {:name=>"Curly", :data=>3},
  # {:name=>"Moe", :data=>1},
  # {:name=>"Jack", :data=>2},
  # {:name=>"Larry", :data=>7},
  # {:name=>"Curly", :data=>5},
  # {:name=>"Moe", :data=>9},
  # {:name=>"Jack", :data=>8}]
