# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Contract.destroy_all
Project.destroy_all
User.destroy_all

florence = User.new
florence.email = 'florence@example.com'
florence.password = 'valid_password'
florence.password_confirmation = 'valid_password'
florence.username = 'Florence'
florence.save!

anna = User.new
anna.email = 'anna@example.com'
anna.password = 'valid_password'
anna.password_confirmation = 'valid_password'
anna.username = 'Anna'
anna.save!

louis = User.new
louis.email = 'louis@example.com'
louis.password = 'valid_password'
louis.password_confirmation = 'valid_password'
louis.username = 'Louis'
louis.save!

andrea = User.new
andrea.email = 'andrea@example.com'
andrea.password = 'valid_password'
andrea.password_confirmation = 'valid_password'
andrea.username = 'Andrea'
andrea.save!

raja = User.new
raja.email = 'raja@example.com'
raja.password = 'valid_password'
raja.password_confirmation = 'valid_password'
raja.username = 'Raja'
raja.save!

paul = User.new
paul.email = 'paul@example.com'
paul.password = 'valid_password'
paul.password_confirmation = 'valid_password'
paul.username = 'Paul'
paul.save!

mike = User.new
mike.email = 'mike@example.com'
mike.password = 'valid_password'
mike.password_confirmation = 'valid_password'
mike.username = 'Mike'
mike.save!

file_ferme = URI.open('https://res.cloudinary.com/dyvhgfc7l/image/upload/v1574939701/ivan-bandura-lhF8KI8fb84-unsplash_wthnnw.jpg')
ferme = Project.new
ferme.user = mike
ferme.longitude = 2.6450
ferme.latitude = 48.8896
ferme.surface = 50
ferme.duration = 10
ferme.investment_cap = 500_000
ferme.start_date = Date.new(2020,1,1)
ferme.project_type = 'agriculture'
ferme.name = 'Ferme de la Jamayère'
ferme.uhi = 2
ferme.biodiversity = 2
ferme.water_infiltration = 10_000
ferme.local_food = 5
ferme.description = "Une ferme dans l'Oise, qui cultive des fruits. Soutenez nous !"
ferme.photo.attach(io: file_ferme, filename: 'ivan-bandura-lhF8KI8fb84-unsplash_wthnnw.jpg', content_type: 'image/jpg')
ferme.save!

file_foret = URI.open('https://res.cloudinary.com/dyvhgfc7l/image/upload/v1574940272/lucas-gallone-Q4QjAPMpJRQ-unsplash_fesacp.jpg')
foret = Project.new
foret.user = paul
foret.latitude = 48.7671
foret.longitude = 2.5529
foret.surface = 100
foret.duration = 20
foret.investment_cap = 500_000
foret.start_date = Date.new(2020,1,1)
foret.project_type = 'forest'
foret.name = 'Foret de Cleden Poher'
foret.uhi = 5
foret.biodiversity = 5
foret.water_infiltration = 10_000
foret.local_food = 0
foret.description = "Une nouvelle forêt en gestion Miyawaka dans le finistère."
foret.photo.attach(io: file_foret, filename: 'lucas-gallone-Q4QjAPMpJRQ-unsplash_fesacp.jpg')
foret.save!

contract_1 = Contract.new
contract_1.user = raja
contract_1.project = ferme
contract_1.investment = 10_000
contract_1.status = 'Invoice sent'
contract_1.save!

contract_2 = Contract.new
contract_2.user = florence
contract_2.project = foret
contract_2.investment = 20_000
contract_2.status = 'Active'
contract_2.save!
