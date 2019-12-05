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

jean = User.new
jean.email = 'jean@example.com'
jean.password = 'valid_password'
jean.password_confirmation = 'valid_password'
jean.username = 'Jean'
jean.save!

robert = User.new
robert.email = 'robert@example.com'
robert.password = 'valid_password'
robert.password_confirmation = 'valid_password'
robert.username = 'Robert'
robert.save!

vincent = User.new
vincent.email = 'vincent@example.com'
vincent.password = 'valid_password'
vincent.password_confirmation = 'valid_password'
vincent.username = 'Vincent'
vincent.save!

lalita = User.new
lalita.email = 'lalita@example.com'
lalita.password = 'valid_password'
lalita.password_confirmation = 'valid_password'
lalita.username = 'Lalita'
lalita.save!

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

file_ferme = URI.open('https://res.cloudinary.com/dyvhgfc7l/image/upload/v1574962054/peter-wendt--r5KSMkyoSc-unsplash_ngfufj.jpg')
ferme = Project.new
ferme.user = anna
ferme.longitude = 2.6450
ferme.latitude = 48.8896
ferme.surface = 50
ferme.duration = 10
ferme.investment_cap = 50_000
ferme.start_date = Date.new(2020,1,1)
ferme.project_type = 'agriculture'
ferme.name = 'Ferme de la Jamayère'
ferme.uhi = 2
ferme.biodiversity = 2
ferme.water_infiltration = 9_500
ferme.local_food = 5
ferme.description = "<h4>Agriculteur depuis plusieurs années et en transition 100%' BIO, je souhaite diversifier mon activité et vous proposer des fruits et légumes.</h4><br>
Mon but est donc de proposer un large choix de fruits et légumes tout au long de l'année au détail ou sous forme de paniers, dont le contenu variera au fil des saisons et selon la récolte et la disponibilité des produits.
<br>Tous les dons que je vais recevoir vont me servir à financer une partie du matériel et de l'équipement dont j'aurai besoin pour commencer mon aventure, ainsi que de me donner la possibilité de convertir ma coltivation en bio."
ferme.photo.attach(io: file_ferme, filename: 'peter-wendt--r5KSMkyoSc-unsplash_ngfufj.jpg', content_type: 'image/jpg')
ferme.save!

file_viniard = URI.open('https://res.cloudinary.com/dyvhgfc7l/image/upload/v1575024053/michel-stockman-RvvSt2tUQxE-unsplash_tmnnbk.jpg')
viniard = Project.new
viniard.user = florence
viniard.latitude = 48.396090
viniard.longitude = 2.071735
viniard.surface = 53
viniard.duration = 10
viniard.investment_cap = 250_000
viniard.start_date = Date.new(2020,3,15)
viniard.project_type = 'agriculture'
viniard.name = 'Exploitation bio de vignes'
viniard.uhi = 3
viniard.biodiversity = 3
viniard.water_infiltration = 8_800
viniard.local_food = 10
viniard.description = "<h4>J'aimerai faire re-vivre la culture de vignes.</h4><br>Moi c'est Rémi, je suis âgé de 23 ans tout juste. Je me suis installé en agriculture biologique en 2018.<br>
J'ai un projet pour valoriser ma ferme aux yeux de mes clients. Je veux remettre au goût du jour la culture de la vigne bio.<br>
J'ai un projet de plantation d'un demi hectare, avec plusieurs variétés différentes : 4 à 5. La plantation s’effectuerait en début d'année 2020 pour une première récolte en 2022-2023 à peu près. "
viniard.photo.attach(io: file_viniard, filename: 'michel-stockman-RvvSt2tUQxE-unsplash_tmnnbk.jpg', content_type: 'image/jpg')
viniard.save!

file_fruitiers = URI.open('https://res.cloudinary.com/dyvhgfc7l/image/upload/v1575021932/michael-weidner-tiPQCmdALWs-unsplash_eymwes.jpg')
fruitiers = Project.new
fruitiers.user = raja
fruitiers.latitude = 48.853586
fruitiers.longitude = 1.486502
fruitiers.surface = 5
fruitiers.duration = 25
fruitiers.investment_cap = 180_000
fruitiers.start_date = Date.new(2020,6,1)
fruitiers.project_type = 'agriculture'
fruitiers.name = 'Plantons arbres bocagers'
fruitiers.uhi = 1
fruitiers.biodiversity = 1
fruitiers.water_infiltration = 7_000
fruitiers.local_food = 10
fruitiers.description = "<h4>Participer à la plantation de 5500 arbres autour de nos jardins maraîchers et dans les poulaillers afin de créer un maillage de biodiversité.</h4><br>Nous sommes Mathilde et Raja, soucieux du bien-être animal, du respect de l'environnement et comme une envie de contribuer à ce retour vers une alimentation locale, saine et de qualité.
C'est en 2016 que nous décidâmes de nous lancer dans le parcours d'installation d'une production de volailles de chair et d'oeufs fermiers en Agriculture Biologique. Nous faisons appel à votre générosité et votre soutien afin de nous aider à financer l'achat de 5 ha et d'un millier de fruitiers: pommiers, poiriers, pruniers, framboisiers etc.. en privilegiant des variétés locales!"
fruitiers.photo.attach(io: file_fruitiers, filename: 'michael-weidner-tiPQCmdALWs-unsplash_eymwes.jpg', content_type: 'image/jpg')
fruitiers.save!

file_jardin = URI.open('https://res.cloudinary.com/dyvhgfc7l/image/upload/v1575024627/emiel-molenaar-c6___zGObUc-unsplash_wwojma.jpg')
jardin = Project.new
jardin.user = mike
jardin.latitude = 48.520615
jardin.longitude = 1.504071
jardin.surface = 12
jardin.duration = 15
jardin.investment_cap = 90_000
jardin.start_date = Date.new(2020,5,15)
jardin.project_type = 'agriculture'
jardin.name = "Soyez co-créateur d'un Jardin"
jardin.uhi = 2
jardin.biodiversity = 2
jardin.water_infiltration = 35_000
jardin.local_food = 7
jardin.description = "<h4>Création d'un jardin en agro-foresterie, un jardin pour la Terre, un jardin pour nos enfants... Un lieu de vie et d'animations.</h4><br>Qui n’a pas, un jour, retrouvé son âme
d’enfant en ramassant au détour d’un chemin des mûres encore tiédies par le soleil à s’en mettre plein la bouche et les doigts en esquissant un sourire violacé plein de fierté.<br>
C’est autour de ce jardin que nous avons pu apprécier toutes ses saveurs sans compter les fleurs, insectes, présents en ces lieux et une magnifique vue qui nous amène à voir toujours plus grand … Autant de qualificatifs qui mettent tout nos sens en éveil….
Mettre en valeur Dame Nature, donner un futur à ce bout de terre, apporter des solutions pour être en harmonie avec elle, simplement et avec respect….
<br>En participant à l’élaboration de ce jardin, nous devenons tous les co-créateurs d’une vie meilleure et nous agissons tous ensemble en sa faveur.
Rejoignez-moi dans ce projet et suivez le fil d’Ariane qui vous mènera à la découverte d’un jardin écologique en agro-foresterie.
<br>« Je deviendrais garde forestier » disais-je quand j’étais gamin. Chemin faisant, me voici cotisant solidaire en plantes aromatiques et médicinales, installé depuis 5 ans.
La collecte servira à étendre l’activité sur une surface totale de 12 hectares par l’acquisition d’un terrain. Planter sur ce jardin différentes essences d’arbres, créer un verger ancien, des collections diverses de plantes aromatiques et médicinales... Un lieu d’expression artistique avec la création de structures végétalisées."
jardin.photo.attach(io: file_jardin, filename: 'emiel-molenaar-c6___zGObUc-unsplash_wwojma.jpg', content_type: 'image/jpg')
jardin.save!

file_pature = URI.open('https://res.cloudinary.com/dyvhgfc7l/image/upload/v1574940272/lucas-gallone-Q4QjAPMpJRQ-unsplash_fesacp.jpg')
pature = Project.new
pature.user = vincent
pature.latitude = 48.435239
pature.longitude = 1.559645
pature.surface = 20
pature.duration = 25
pature.investment_cap = 70_000
pature.start_date = Date.new(2020,4,1)
pature.project_type = 'agriculture'
pature.name = 'En avant la pâture !'
pature.uhi = 1
pature.biodiversity = 2
pature.water_infiltration = 9_900
pature.local_food = 5
pature.description = "<h4>Aidez-moi à aggrandir ma pâture et à réduire mon empreinte carbone</h4><br>Bonjour, je m’appelle Vincent, je suis éleveur laitier en Normandie. En 2005, je me suis installé sur la ferme familiale, à la suite du départ en retraite de mes parents. Ma ferme laitière se situe pas loin de Chartres.
Mon exploitation est exclusivement laitière, elle est composée de 65 vaches laitières et s’étend sur 85 hectares. Tout ce que je produis sur mon exploitation sert à nourrir mes animaux.
<br>Les actions que je souhaite mettre en place afin de réduire mon empreinte carbone et de gagner en autonomie sont les suivantes: Implanter 20 ha de prairies supplémentaires autour du bâtiment d’élevage, afin que les vaches puissent davantage pâturer et ainsi diminuer leur consommation de maïs ensilage et de soja.
Aménager le parcellaire, installer des clôtures, des abreuvoirs et mettre en place des chemins d’accès pour les vaches."
pature.photo.attach(io: file_pature, filename: 'lucas-gallone-Q4QjAPMpJRQ-unsplash_fesacp.jpg', content_type: 'image/jpg')
pature.save!

file_bio = URI.open('https://res.cloudinary.com/dyvhgfc7l/image/upload/v1575024466/john-tuesday-t0vukuCtjpE-unsplash_hstump.jpg')
bio = Project.new
bio.user = lalita
bio.latitude = 48.403393
bio.longitude = 1.528833
bio.surface = 15
bio.duration = 18
bio.investment_cap = 150_000
bio.start_date = Date.new(2020,9,1)
bio.project_type = 'agriculture'
bio.name = 'Tous en bio !'
bio.uhi = 3
bio.biodiversity = 4
bio.water_infiltration = 7_400
bio.local_food = 9
bio.description = "<h4>Aidez à implanter le premier verger de pommiers et poiriers en culture biologique, de variétés anciennes, rustiques et résistantes.</h4><br>Arboriculteurs de père en fils depuis 1960, notre exploitation d'arbres fruitiers se déploie sur la commune de Chartres. Nous produisons, au sein de cette entreprise familiale, plusieurs variétés de pommes et de poires bio. Nous souhaitons aujourd'hui produire des fruits bio,
issus d'arbres spécialement destinés à ce type d'agriculture. En effet, bien que toutes les variétés puissent être converties à ce mode de production, il existe depuis  chez les pépiniéristes, des variétés de pommes et de poires spécifiquement conçue pour l'agriculture bio. Ces variétés nouvelles sont révolutionnaires, résistantes ou trés peu sensibles aux maladies, mais aussi d'une grande qualité gustative  Nous ne disposons que de
quelques années pour les acheter lorsqu'elles sortent chez les pépiniéristes. Il y a en effet une forte demande due à leurs nombreuses qualités.<br>
Cette collecte va nous permettre de planter des variétés de pommes et poires en agriculture biologiques, sélectionnées pour leur rusticité, leur goût et conservation. Notre but est de sauvegarder des variétés locales, anciennes et rustiques. Mais aussi de planter des nouvelles variétés résistantes aux maladies et ravageurs courants. Nous souhaitons proposer des produits sans emballages et bio afin de répondre à une forte demande de la part de nos clients.
Un des objectifs de notre projet est d'améliorer le bien-être environnant, notamment des habitations voisines. En effet, dans le cadre d'un verger biologique, l'absence de l'utilisation de pesticides suppriment toutes nuisances auprès des riverains. De plus, nous bénéficions ainsi de nombreux insectes auxilliaires (nombreuses coccinelles, syrphes, aphylénus mali, etc.) qui se nourrissent de pucerons. Cette biodiversité nous est bénéfique puisqu'elle permet
d'avoir une culture saine et abondante."
bio.photo.attach(io: file_bio, filename: 'john-tuesday-t0vukuCtjpE-unsplash_hstump.jpg', content_type: 'image/jpg')
bio.save!

file_insect = URI.open('https://res.cloudinary.com/dyvhgfc7l/image/upload/v1574962270/jenna-lee-f0OL01IHbCM-unsplash_xobown.jpg')
insect = Project.new
insect.user = louis
insect.latitude = 48.904744
insect.longitude = 1.512769
insect.surface = 1
insect.duration = 7
insect.investment_cap = 50_000
insect.start_date = Date.new(2020,3,15)
insect.project_type = 'haies'
insect.name = 'Des haies dans le verger'
insect.uhi = 2
insect.biodiversity = 5
insect.water_infiltration = 8_000
insect.local_food = 2
insect.description = "<h4>Plantons 2000 mètres de haies pour fournir 'gîte et couverts' aux insectes et embellir notre paysage.</h4><br>Salut, je m'appelle Louis et mon objectif est de planter 2000 mètres de haies.
Comme nous, les insectes ont besoin d’un toit et de nourriture qu’ils peuvent trouver dans des haies diversifiées et fleuries. Celles-ci vont leur permettre de trouver des conditions favorables de développement.
<br>En collaboration avec une chercheuse de l’INRA, nous avons choisi :
<li>Des essences locales adaptées aux conditions méditerranéennes,</li>
<li>Des floraisons étalées riches en nectar et pollens,</li>
<li>Une diversité de taille du buisson à l’arbre, connectées aux haies existantes</li><br>
Avec ta contribution, je pourrai commencer mon projet déjà de ce printemps !"
insect.photo.attach(io: file_insect, filename: 'jenna-lee-f0OL01IHbCM-unsplash_xobown.jpg', content_type: 'image/jpg')
insect.save!


file_abricots = URI.open('https://res.cloudinary.com/dyvhgfc7l/image/upload/v1575021836/margarita-zueva-LTXZ3omfBDE-unsplash_md4itd.jpg')
abricots = Project.new
abricots.user = jean
abricots.latitude = 48.377393
abricots.longitude = 1.418331
abricots.surface = 10
abricots.duration = 10
abricots.investment_cap = 100_000
abricots.start_date = Date.new(2020,3,15)
abricots.project_type = 'agriculture'
abricots.name = "Installation d'un grand verger"
abricots.uhi = 1
abricots.biodiversity = 2
abricots.water_infiltration = 5_600
abricots.local_food = 5
abricots.description = "<h4>Une nouvelle production arboricole d'abricots, de pêches et de cerises juste à côté de Chartres.</h4><br>Je m'appelle Jean, j'ai 49 ans et je suis arboriculteur. Je produis sur mon exploitation des abricots, pêches et des cerises dans la belle région de Eure-et-Loire.<br>
Concerné par l’impact environnemental de mon métier, je me lance dans l’audacieux projet de conversion biologique de ma production ! Pour pérenniser ce projet de transition de model modèle de production autour de l’alimentation durable, je compte racheter du matériel nécessaire à l’exploitation qui, je le rappelle,
demande beaucoup de main d’œuvre. Ce matériel me permettra de gagner en confort de travail et en efficacité afin de proposer les meilleurs produits possibles aux consommateurs."
abricots.photo.attach(io: file_abricots, filename: 'margarita-zueva-LTXZ3omfBDE-unsplash_md4itd.jpg', content_type: 'image/jpg')
abricots.save!

file_indigene = URI.open('https://res.cloudinary.com/dyvhgfc7l/image/upload/v1574962093/kazuend-19SC2oaVZW0-unsplash_znkt4m.jpg')
indigene = Project.new
indigene.user = robert
indigene.latitude = 48.482989
indigene.longitude = 1.408669
indigene.surface = 5
indigene.duration = 20
indigene.investment_cap = 100_000
indigene.start_date = Date.new(2020,5,1)
indigene.project_type = 'forest'
indigene.name = "Foret en gestion Miyawaka"
indigene.uhi = 3
indigene.biodiversity = 5
indigene.water_infiltration = 9_000
indigene.local_food = 5
indigene.description = "<h4>Une nouvelle forêt en gestion Miyawaka dans le finistère.</h4><br>Salut !<br>Nous sommes 3 amis qui ont récemment découvert les principes du botaniste japonais Miyawaki. Ils consistent à mettre les plantes en synergie afin de recréer des forêts indigènes (constituées de plantes locales) qui poussent plus vite, absorbent plus de CO2, restituent plus d'oxygène.
<br>A l'heure où les forêts brûlent, il nous paraît essentiel de reboiser le département. Nous nous heurtons tous les jours aux questionnements, aux inquiétudes des parents pour l'avenir de leurs enfants.
<br>Nous vous proposons d'agir avec nous, maintenant. Chacun de nous peut changer  l'avenir du monde. La collecte va servir à boiser deux parcelles, sous la forme d'une forêt composée d'arbres natif ainsi que d'une forêt comestible."
indigene.photo.attach(io: file_indigene, filename: 'kazuend-19SC2oaVZW0-unsplash_znkt4m.jpg', content_type: 'image/jpg')
indigene.save!


contract_1 = Contract.new
contract_1.user = raja
contract_1.project = ferme
contract_1.investment = 10_000
contract_1.status = 'Invoice sent'
contract_1.save!

contract_2 = Contract.new
contract_2.user = florence
contract_2.project = indigene
contract_2.investment = 20_000
contract_2.status = 'Active'
contract_2.save!
