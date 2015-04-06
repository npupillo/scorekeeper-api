g1 = Game.create!(name: 'Mucka', start_date: 'Apr 1 2015', end_date: 'Apr 1 2015', status: 'inactive')
g2 = Game.create!(name: 'Hearts', start_date: 'Apr 1 2015', end_date: nil, status: 'active')

larry = Player.create!(username: 'Larry', email: 'larry@stooge.com', password_digest: 'password123')
curly = Player.create!(username: 'Curly', email: 'curly@stooge.com', password_digest: 'password123')
moe = Player.create!(username: 'Moe', email: 'moe@stooge.com', password_digest: 'password123')

g1.scores.create!(pscore: 2, round: 1, player_id: 1)
g1.scores.create!(pscore: 3, round: 1, player_id: 2)
g1.scores.create!(pscore: 1, round: 1, player_id: 3)

g1.scores.create!(pscore: 3, round: 2, player_id: 1)
g1.scores.create!(pscore: 4, round: 2, player_id: 2)
g1.scores.create!(pscore: 7, round: 2, player_id: 3)

g2.scores.create!(pscore: 4, round: 1, player_id: 1)
g2.scores.create!(pscore: 6, round: 1, player_id: 2)
g2.scores.create!(pscore: 5, round: 1, player_id: 3)

