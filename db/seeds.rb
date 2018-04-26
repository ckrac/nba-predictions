# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Prediction.destroy_all

ari = User.create!(username: 'ari', email: 'ari@ari.co', password: 'password')
j = User.create!(username: 'j', email: 'j@j.co', password: 'password')
bell = User.create!(username: 'bell', email: 'bell@bell.co', password: 'password')
dom = User.create!(username: 'dom', email: 'dom@dom.co', password: 'password')
ramsey = User.create!(username: 'ramsey', email: 'ramsey@ramsey.co', password: 'password')
ken = User.create!(username: 'ken', email: 'ken@ken.co', password: 'password')

# ari predictions
Prediction.create!(user: ari, name: 'Sixers vs Bucks', description: 'Game 2, Sixers wins by 20')
Prediction.create!(user: ari, name: 'Heat vs Pacers', description: 'Game 1, Pacers wins by 4')
Prediction.create!(user: ari, name: 'Sixers vs Bucks', description: 'Game 3, Bucks wins by 5')
Prediction.create!(user: ari, name: 'Heat vs Pacers', description: 'Game 2, Heat wins by 10')
Prediction.create!(user: ari, name: 'Sixers vs Bucks', description: 'Game 5, Sixers wins by 14')

# j predictions
Prediction.create!(user: j, name: 'Raptors vs Wizards', description: 'Game 1, Raptors wins by 10')
Prediction.create!(user: j, name: 'Raptors vs Wizards', description: 'Game 2, Raptors wins by 14')
Prediction.create!(user: j, name: 'Raptors vs Wizards', description: 'Game 3, Raptors wins by 8')
Prediction.create!(user: j, name: 'Raptors vs Wizards', description: 'Game 4, Raptors wins by 6')
Prediction.create!(user: j, name: 'Sixers vs Bucks', description: 'Game 5, Sixers wins by 4')

# bell predictions
Prediction.create!(user: bell, name: 'Raptors vs Wizards', description: 'Game 1, Raptors wins by 14')
Prediction.create!(user: bell, name: 'Heat vs Pacers', description: 'Game 2, Heat wins by 4')
Prediction.create!(user: bell, name: 'Pellicans vs Blazers', description: 'Game 1, Blazers wins by 6')
Prediction.create!(user: bell, name: 'Spurs vs Warriors', description: 'Game 3, Warriors wins by 14')
Prediction.create!(user: bell, name: 'Heat vs Pacers', description: 'Game 1, Heat wins by 5')
Prediction.create!(user: bell, name: 'Bucks vs Celtics', description: 'Game 3, Celtics wins by 8')

# dom predictions
Prediction.create!(user: dom, name: 'Raptors vs Wizards', description: 'Game 1, Raptors wins by 16')
Prediction.create!(user: dom, name: 'Raptors vs Wizards', description: 'Game 2, Raptors wins by 10')
Prediction.create!(user: dom, name: 'Heat vs Pacers', description: 'Game 2, Heat wins by 6')
Prediction.create!(user: dom, name: 'Bucks vs Celtics', description: 'Game 2, Bucks wins by 4')

# ramsey predictions
Prediction.create!(user: ramsey, name: 'Spurs vs Warriors', description: 'Game 1, Warriors wins by 10')
Prediction.create!(user: ramsey, name: 'Spurs vs Warriors', description: 'Game 2, Warriors wins by 22')
Prediction.create!(user: ramsey, name: 'Spurs vs Warriors', description: 'Game 3, Warriors wins by 17')
Prediction.create!(user: ramsey, name: 'Raptors vs Wizards', description: 'Game 1, Raptors wins by 6')

# ken predictions
Prediction.create!(user: ken, name: 'Heat vs Pacers', description: 'Game 2, Heat wins by 6')
Prediction.create!(user: ken, name: 'Heat vs Pacers', description: 'Game 2, Heat wins by 9')
Prediction.create!(user: ken, name: 'Heat vs Pacers', description: 'Game 2, Pacers wins by 8')

