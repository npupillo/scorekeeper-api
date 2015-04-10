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


gp1 = Gameplayer.find(1)
gp2 = Gameplayer.find(2)
gp3 = Gameplayer.find(3)
gp4 = Gameplayer.find(4)
gp5 = Gameplayer.find(5)
gp6 = Gameplayer.find(6)
gp7 = Gameplayer.find(7)

gp1.scores.create!(points: 4, round: 1)
gp2.scores.create!(points: 3, round: 1)
gp3.scores.create!(points: 2, round: 1)

gp1.scores.create!(points: 7, round: 2)
gp2.scores.create!(points: 6, round: 2)
gp3.scores.create!(points: 5, round: 2)

gp4.scores.create!(points: 10, round: 1)
gp5.scores.create!(points: 11, round: 1)
gp6.scores.create!(points: 12, round: 1)
gp7.scores.create!(points: 13, round: 1)
