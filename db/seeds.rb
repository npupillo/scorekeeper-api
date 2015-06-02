g1 = Game.create!(name: 'Mucka', start_date: 'Apr 1 2015', end_date: 'Apr 1 2015', status: 'inactive')
g2 = Game.create!(name: 'Hearts', start_date: 'Apr 1 2015', end_date: nil, status: 'active')

larry = Player.create!(username: 'Larry', email: 'larry@stooge.com')
curly = Player.create!(username: 'Curly', email: 'curly@stooge.com')
moe = Player.create!(username: 'Moe', email: 'moe@stooge.com')
jack = Player.create!(username: 'Jack', email: 'j@j.com')

g1_s1 = Score.create!(game_id: 1, player_id: 1, points: 4)
g1_s2 = Score.create!(game_id: 1, player_id: 2, points: 3)
g1_s3 = Score.create!(game_id: 1, player_id: 3, points: 1)
g1_s4 = Score.create!(game_id: 1, player_id: 4, points: 2)

g1_s1 = Score.create!(game_id: 1, player_id: 1, points: 7)
g1_s2 = Score.create!(game_id: 1, player_id: 2, points: 5)
g1_s3 = Score.create!(game_id: 1, player_id: 3, points: 9)
g1_s4 = Score.create!(game_id: 1, player_id: 4, points: 8)


g2_s1 = Score.create!(game_id: 2, player_id: 1, points: 5)
g2_s2 = Score.create!(game_id: 2, player_id: 2, points: 7)
g2_s3 = Score.create!(game_id: 2, player_id: 1, points: 4)
g2_s4 = Score.create!(game_id: 2, player_id: 2, points: 6)
g2_s5 = Score.create!(game_id: 2, player_id: 1, points: 2)
g2_s6 = Score.create!(game_id: 2, player_id: 2, points: 3)
g2_s7 = Score.create!(game_id: 2, player_id: 1, points: 4)
g2_s8 = Score.create!(game_id: 2, player_id: 2, points: 8)
