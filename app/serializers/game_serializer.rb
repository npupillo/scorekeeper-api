class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :start_date, :end_date, :status, :game_scores

  # has_many :scores

  # Gather each individual score with name & score
  def game_scores
    flattened_scores = []
    object.scores.each do |score|
      flattened_scores << {'name': score.player.username, 'data': [score.points], 'tally': 0}
    end
    # return flattened_scores
    #=> "game_scores":[{"name":"Larry","data":[4],"tally":0},{"name":"Curly","data":[3],"tally":0},{"name":"Moe","data":[1],"tally":0},{"name":"Jack","data":[2],"tally":0},{"name":"Larry","data":[7],"tally":0},{"name":"Curly","data":[5],"tally":0},{"name":"Moe","data":[9],"tally":0},{"name":"Jack","data":[8],"tally":0}]}
    collected_scores(flattened_scores)
  end #end game_scores

  # Consolidate each player with their score array
  def collected_scores(flattened_scores)
    collected = []
    flattened_scores.each do |obj|
      obj_name = obj[:name]
      obj_data = obj[:data]

      #  #if obj 'name' IS NOT found in new_array, push the obj into the collected array
      if collected.any? { |h| h[:name] == obj_name } == false
        # p 'NOT found: ' + obj_name + obj_data.to_s

        #set value of obj data to obj tally
        obj[:tally] = obj_data[0]

        collected << obj
        # p 'push obj: ' + obj_name

      # #if obj 'name' IS found in new_array, push the obj_data array value to the collected array object's data array
      else collected.any? { |h| h[:name] == obj_name } == true
        # p 'OBJECT found: ' + obj_name + obj_data.to_s

        #detected is the matching object in the collected array
        detected = collected.detect { |h| h[:name] == obj_name}

        #push obj_data value to the data value of the matching object in collected array
        detected[:data] << obj_data[0]
        # p 'push obj data: ' + obj_data.to_s

        #add the obj_data value to the tally value of the matching object in collected array
        detected[:tally] += obj_data[0]

      end #end if

    end #flatten_scores.each
    return collected
    #=> {"id":1,"name":"Mucka","start_date":"2015-04-01","end_date":"2015-04-01","status":"inactive","game_scores":[{"name":"Larry","data":[4,7,1],"tally":12},{"name":"Curly","data":[3,5,2],"tally":10},{"name":"Moe","data":[1,9,3],"tally":13},{"name":"Jack","data":[2,8,4],"tally":14}]}

  end #end collected_scores
end #end class GameSerializer
