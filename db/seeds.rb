g1 = Game.create!(name: 'Mucka', start_date: 'Apr 1 2015', end_date: 'Apr 1 2015', status: 'inactive')
g2 = Game.create!(name: 'Hearts', start_date: 'Apr 1 2015', end_date: nil, status: 'active')

larry = Player.create!(username: 'Larry', email: 'larry@stooge.com', password_digest: 'password123')
curly = Player.create!(username: 'Curly', email: 'curly@stooge.com', password_digest: 'password123')
moe = Player.create!(username: 'Moe', email: 'moe@stooge.com', password_digest: 'password123')
jack = Player.create!(username: 'Jack', email: 'j@j.com', password_digest: 'password123')

g1.gameplayers.create!(player_id: 1)
g1.gameplayers.create!(player_id: 2)
g1.gameplayers.create!(player_id: 3)

g2.gameplayers.create!(player_id: 1)
g2.gameplayers.create!(player_id: 2)
g2.gameplayers.create!(player_id: 3)
g2.gameplayers.create!(player_id: 4)


gp1 = Gameplayer.first
gp1 = Gameplayer.second
gp1 = Gameplayer.third

gp1.scores.create!(points: 2, round: 1)
gp2.scores.create!(points: 3, round: 1)
gp3.scores.create!(points: 1, round: 1)

gp1.scores.create!(points: 3, round: 2)
gp2.scores.create!(points: 6, round: 2)
gp3.scores.create!(points: 4, round: 2)
