# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying all lessons"
Lesson.destroy_all
puts "lessons destroyed"
puts "destroying all users"
User.destroy_all
puts "user destroyed"
puts "destroying all reviews"
Review.destroy_all
puts "reviews all destroyed"

puts "destroying all participations"
Participation.destroy_all
puts "participations destroyed"

lily = User.create!(email: "lily@gmail.com", password: "123456", first_name: "Lily", last_name: "Gasztowtt")
anna = User.create!(email: "anna@gmail.com", password: "123456", first_name: "Anna", last_name: "Hercot")
nico = User.create!(email: "nico@gmail.com", password: "123456", first_name: "Nicolas", last_name: "Descreux")
helo = User.create!(email: "helo@gmail.com", password: "123456", first_name: "Héloise", last_name: "Guillemot")

#anna

lesson_anna_inscription = Lesson.create!(teacher: anna, name: "Le cercle trigonométrique", topic: "Mathématiques", subtopic: "Trigonométrie", min_num_of_participants: 4, max_num_of_participants: 6, price: 40, current_price: 40, price_per_user: 40, grade: "Terminale", summary: "Compréhension détaillée du cercle trigonométrique avec théorie sur les radians et l'angle orienté de deux vecteurs", description: "Le but de ce cours est de revenir sur la définition du cercle trigonométrique, qui correspond à: sur un cercle, on appelle sens direct, sens positif ou sens trigonométrique le sens contraire des aiguilles d’une montre. Nous travaillerons sur la définition d'un radian ainsi que sur la correspondance entre les radians et les degrés", duration: 60, starts_at: "17:00", date: "2018-12-16")
lesson_anna_inscription.skill_list.add("raisonnement", "construire une démonstration,", "passer d’un mode de représentation à un autre")
lesson_anna_inscription.objective_list.add("Découverte des relations trigonométriques  dans le premier cadran du cercle", "Valeurs caractéristiques du  cercle trigonométrique", "Désignations des axes de coordonnées")
lesson_anna_inscription.save!

lesson_anna_replay= Lesson.create!(teacher: anna, name: "Système à deux inconnues", topic: "Mathématiques", subtopic: "Equations et inéquations", min_num_of_participants: 3, max_num_of_participants: 10, price: 20, current_price: 20, price_per_user: 20, grade: "Première", summary: "Résolution d'un système de deux équations à deux inconnues: méthodes de substituion et de combinaison",description: "Il y a deux méthodes principales pour résoudre des systèmes de deux équations a deux inconnues. Dans de cours, nous reviendrons sur ces deux méthodes et comprendrons les étapes pour chaque.", duration: 13, starts_at: "13:00", date: "2018-12-11")
lesson_anna_replay.skill_list.add("logique", "raisonnement", "organiser les différentes étapes d’un calcul complexe")
lesson_anna_replay.objective_list.add("Méthode de substituion", "Méthode de combinaison", "Factorisation et développement")
lesson_anna_replay.save!

lesson_anna_live = Lesson.create!(teacher: anna, name: "Variables aléatoires", topic: "Mathématiques", subtopic: "Probabilités", min_num_of_participants: 3, max_num_of_participants: 10, price: 100, current_price: 100, price_per_user: 100, grade: "Première", summary: "Déterminer une loi de probabilité d'une variable aléatoire", description: "Cours sur les variables aléatoires avec l'étude d'un scénario précis. Nous allons voir ensembles comment résumer les informations dans un tableau et quelles valeurs assigner à la variable X dépendant du scénario.", duration: 60, starts_at: "16:00", date: "2018-12-16",channel_id: "1ux79Xb9YLI")
lesson_anna_live.skill_list.add("logique", "raisonnement", "extraction d'information", "organiser les différentes étapes d’un calcul complexe","différencier le statut des énoncés mis en jeu")
lesson_anna_live.objective_list.add(" Lister l’ensemble des valeurs xi prises par  X", "Construire le tableau de probabilité")
lesson_anna_live.save!

#Trigonométrie

lesson_helo_1 = Lesson.create!(teacher: helo, name: "Triangle rectangle", topic: "Mathématiques", subtopic: "Trigonométrie", min_num_of_participants: 4, max_num_of_participants: 6, price: 50, current_price: 50, price_per_user: 50, grade: "Terminale", summary: "Dans un triangle rectangle, on définit trois côtés : l'hypoténuse, le côté adjacent, le côté opposé à l’angle étudié.", description: "Attention, seule l'hypoténuse est toujours la même quel que soit l’angle étudié. Le côté opposé à l’angle {ABC} ABC est [AC][AC], mais le côté opposé à l’angle {ACB} ACB est [AB][AB].", duration: 60, starts_at: "17:00", date: "2018-12-17")
lesson_helo_1.skill_list.add("Modéliser", "Représenter", "Raisonner")
lesson_helo_1.objective_list.add("Traduire en langage mathématique une situation réelle", "Simplifier ou particulariser une situation", "Reformuler un problème")
lesson_helo_1.save!

lesson_edward_1 = Lesson.create!(teacher: edward, name: "Calcul de longueurs et d'angles", topic: "Mathématiques", subtopic: "Trigonométrie", min_num_of_participants: 4, max_num_of_participants: 6, price: 20, current_price: 20, price_per_user: 20, grade: "Terminale", summary: "Dans un triangle rectangle, on définit trois côtés : l'hypoténuse, le côté adjacent, le côté opposé à l’angle étudié.", description: "Attention, seule l'hypoténuse est toujours la même quel que soit l’angle étudié. Le côté opposé à l’angle {ABC} ABC est [AC][AC], mais le côté opposé à l’angle {ACB} ACB est [AB][AB].", duration: 60, starts_at: "17:00", date: "2018-12-17")
lesson_edward_1.skill_list.add("Analyser un problème", "Conduire une démonstration", "Analyse et synthèse")
lesson_edward_1.objective_list.add("Critiquer une démarche", "Représenter un objet mathématique", "Opérer la conversion")
lesson_edward_1.save!

lesson_germain_1 = Lesson.create!(teacher: germain, name: "Triangle rectangle", topic: "Mathématiques", subtopic: "Trigonométrie", min_num_of_participants: 4, max_num_of_participants: 6, price: 30, current_price: 30, price_per_user: 30, grade: "Terminale", summary: "Si l’on connait la mesure d’un des angles (non droit) du triangle rectangle et la longueur d’un des côtés, on peut obtenir les longueurs des autres côtés en utilisant le rapport trigonométrique approprié.", description: "Dans un triangle rectangle, si l’on connait les longueurs de deux des côtés, on peut obtenir les mesures de tous les angles en utilisant les rapports trigonométriques.", duration: 60, starts_at: "17:00", date: "2018-12-17")
lesson_germain_1.skill_list.add("Représenter un objet mathématique", "Reformuler un problème", "Analyser un problème.")
lesson_germain_1.objective_list.add("Mettre en œuvre des algorithmes simples", "Simplifier ou particulariser une situation", "Développer une argumentation mathématique")
lesson_germain_1.save!

#Equations et inéquations

lesson_edward_2 = Lesson.create!(teacher: edward, name: "Système à une inconnue", topic: "Mathématiques", subtopic: "Equations et inéquations", min_num_of_participants: 3, max_num_of_participants: 10, price: 20, current_price: 20, price_per_user: 20, grade: "Première", summary: "Étudier le signe de A times BA×B pour tout xx réel, revient à étudier le signe de AA et de BB puis de A times BA×B sur mathbb{R}R. Ces résultats sont synthétisés dans un tableau de signes.",description: "Dans un tableau de signes relatif à un quotient, on précise les racines du dénominateur par une double barre.", duration: 13, starts_at: "13:00", date: "2018-12-18")
lesson_edward_2.skill_list.add("Critiquer une démarche", "Méthode de combinaison", "Représenter un objet mathématique")
lesson_edward_2.objective_list.add("Méthode", "Opérer la conversion", "Factorisation et développement")
lesson_edward_2.save!

lesson_anna_2 = Lesson.create!(teacher: anna, name: "Équations du premier degré à une inconnu", topic: "Mathématiques", subtopic: "Equations et inéquations", min_num_of_participants: 3, max_num_of_participants: 10, price: 60, current_price: 60, price_per_user: 60, grade: "Première", summary: "Résolution d'un système de deux équations à deux inconnues: méthodes de substituion et de combinaison",description: "Une équation produit est de la forme A times B = 0A×B=0 où AA et BB sont des expressions de la forme ax + bax+b où aa et bb sont des réels non tous nuls.", duration: 13, starts_at: "13:00", date: "2018-12-20")
lesson_anna_2.skill_list.add("Analyse et synthèse", "Conduire une démonstration", "Méthode de combinaison")
lesson_anna_2.objective_list.add("Méthode de substituion", "Méthode de combinaison", "Factorisation et développement")
lesson_anna_2.save!

lesson_charles_1 = Lesson.create!(teacher: charles, name: "Système à deux inconnues", topic: "Mathématiques", subtopic: "Equations et inéquations", min_num_of_participants: 3, max_num_of_participants: 10, price: 20, current_price: 20, price_per_user: 20, grade: "Première", summary: "Résolution graphique d’une équation.",description: "Nous utilisons la règle des signes pour trouver le signe d’un produit ou d’un quotient :", duration: 13, starts_at: "13:00", date: "2018-12-21")
lesson_charles_1.skill_list.add("Logique", "Analyser un problème", "Organiser les différentes étapes d’un calcul complexe")
lesson_charles_1.objective_list.add("Factorisation et développement", "Reformuler un problème", "Raisonnement")
lesson_charles_1.save!

#Probabilités

lesson_germain_2 = Lesson.create!(teacher: germain, name: "Univers et probabilités", topic: "Mathématiques", subtopic: "Probabilités", min_num_of_participants: 3, max_num_of_participants: 10, price: 100, current_price: 100, price_per_user: 100, grade: "Première", summary: "Soit OmegaΩ l’ensemble des éventualités (résultats) possibles d’une expérience aléatoire. On appelle OmegaΩ l’univers de l’expérience.", description: "On appelle évènement toute sous partie de OmegaΩ.", duration: 60, starts_at: "16:00", date: "2018-12-12")
lesson_germain_2.skill_list.add("Critiquer une démarche", "Méthode de combinaison", "Représenter un objet mathématique")
lesson_germain_2.objective_list.add("Méthode", "Opérer la conversion", "Factorisation et développement")
lesson_germain_2.save!

lesson_edward_3 = Lesson.create!(teacher: edward, name: "Loi Binomiale", topic: "Mathématiques", subtopic: "Probabilités", min_num_of_participants: 3, max_num_of_participants: 10, price: 60, current_price: 60, price_per_user: 60, grade: "Première", summary: "Une éventualité est un résultat possible de l’expérience.", description: "Ω est une partie de OmegaΩ, c’est l’évènement certain.", duration: 60, starts_at: "16:00", date: "2018-12-17")
lesson_edward_3.skill_list.add("Analyse et synthèse", "Conduire une démonstration", "Méthode de combinaison")
lesson_edward_3.objective_list.add("Méthode de substituion", "Méthode de combinaison", "Factorisation et développement")
lesson_edward_3.save!

lesson_helo_2 = Lesson.create!(teacher: helo, name: "Graphiques", topic: "Mathématiques", subtopic: "Probabilités", min_num_of_participants: 3, max_num_of_participants: 10, price: 30, current_price: 30, price_per_user: 30, grade: "Première", summary: "Considérons une urne contenant deux boules : une noire et une blanche.", description: "On tire au hasard une boule et on note sa couleur, N pour noire et B pour blanc.", duration: 60, starts_at: "17:00", date: "2018-12-21")
lesson_helo_2.skill_list.add("Logique", "Analyser un problème", "Organiser les différentes étapes d’un calcul complexe")
lesson_helo_2.objective_list.add("Factorisation et développement", "Reformuler un problème", "Raisonnement")
lesson_helo_2.save!

#maths

past_damien = Lesson.create!(teacher: damien, name: "Introduction aux Statistiques", topic: "Mathématiques", subtopic: "Statisques", min_num_of_participants: 3, max_num_of_participants: 10, price: 25, current_price: 25, price_per_user: 25, grade: "Terminale", summary: "Déterminer la moyenne, la variance et l'écart-type d'une série statistique", description: "On considère un dé équilibré. Sa loi de probabilité se résume dans le tableau suivant.", duration: 60, starts_at: "19:30", date: "2018-12-23")
past_damien.skill_list.add("Modéliser", "Représenter", "Raisonner")
past_damien.objective_list.add("Factorisation et développement", "Reformuler un problème", "Raisonnement")
past_damien.save!

#francais

lesson_edward_4 = Lesson.create!(teacher: edward, name: "Le texte théâtral et sa représentation du XVIIe à nos jours", topic: "Français", subtopic: "Théâtre", min_num_of_participants: 3, max_num_of_participants: 10, price: 40, current_price: 40, price_per_user: 40, grade: "Première", summary: "Selon Aristote, le théâtre occidental est apparu au VIe siècle avant J.-C.", description: "La forme d’origine s’appelle « les dithyrambes », sorte d’éloges dansés et chantés par un chœur à la gloire de Dionysos (dieu des arts, de la fête et du vin)", duration: 60, starts_at: "16:00", date: "2018-12-21")
lesson_edward_4.skill_list.add("Caractéristiques", "Transition", "Drame romantique")
lesson_edward_4.objective_list.add("La première tragédie", "L’origine du théâtre", "Les tragédies antiques")
lesson_edward_4.save!

lesson_helo_3 = Lesson.create!(teacher: helo, name: "Le personnage de roman du XVIIe siècle à nos jours", topic: "Français", subtopic: "Théâtre", min_num_of_participants: 3, max_num_of_participants: 10, price: 100, current_price: 100, price_per_user: 100, grade: "Première", summary: "Selon Lily, le théâtre occidental est apparu au VIe siècle avant J.-C.", description: "Les premières représentations théâtrales puis, des lieux spécifiques émergent, les places étaient attribuées en fonction de la classe sociale : les premiers rangs étaient réservés aux citoyens importants", duration: 60, starts_at: "16:00", date: "2018-12-16")
lesson_helo_3.skill_list.add("Caractéristiques", "Transition", "Drame romantique")
lesson_helo_3.objective_list.add("Un acte civique", "L’origine du théâtre", "Les tragédies antiques")
lesson_helo_3.save!

lesson_helo_4 = Lesson.create!(teacher: helo, name: "L'écriture poétique en quête du sens, du Moyen-Âge à nos jours", topic: "Français", subtopic: "Théâtre", min_num_of_participants: 3, max_num_of_participants: 10, price: 100, current_price: 100, price_per_user: 100, grade: "Première", summary: "Selon Lily, le théâtre occidental est apparu au VIe siècle avant J.-C.", description: "Les premières représentations théâtrales grecques : près des temples, sur l’Agora ou sur la place publique", duration: 60, starts_at: "16:00", date: "2018-12-20")
lesson_helo_4.skill_list.add("Caractéristiques", "Transition", "Drame romantique")
lesson_helo_4.objective_list.add("La première tragédie", "L’origine du théâtre", "Les tragédies antiques")
lesson_helo_4.save!

lesson_anna_3 = Lesson.create!(teacher: anna, name: "les Misérables (en code)", topic: "Français", subtopic: "Roman", min_num_of_participants: 3, max_num_of_participants: 10, price: 20, current_price: 20, price_per_user: 20, grade: "première", summary: "Les premières représentations théâtrales grecques : près des temples, sur l’Agora ou sur la place publique", description: "Les places étaient attribuées en fonction de la classe sociale : les premiers rangs étaient réservés aux citoyens importants", duration: 45, starts_at: "18:00", date: "2018-12-11")
lesson_anna_3.skill_list.add("Caractéristiques", "Transition", "Drame romantique")
lesson_anna_3.objective_list.add("La première tragédie", "L’origine du théâtre", "Les tragédies antiques")
lesson_anna_3.save!

lesson_germain_3 = Lesson.create!(teacher: germain, name: "Néo et la Matrice", topic: "Français", subtopic: "Roman", min_num_of_participants: 4, max_num_of_participants: 6, price: 25, current_price: 25, price_per_user: 25, grade: "Terminale", summary: "Les places étaient attribuées en fonction de la classe sociale : les premiers rangs étaient réservés aux citoyens importants", description: "Les places étaient attribuées en fonction de la classe sociale : les premiers rangs étaient réservés aux citoyens importants", duration: 60, starts_at: "14:00", date: "2018-12-16")
lesson_germain_3.skill_list.add("Caractéristiques", "Transition", "Drame romantique")
lesson_germain_3.objective_list.add("La première tragédie", "L’origine du théâtre", "Les tragédies antiques")
lesson_germain_3.save!

lesson_damien_1 = Lesson.create!(teacher: damien, name: "Le judaïsme pour les nuls", topic: "Français", subtopic: "Mouvements littéraires", min_num_of_participants: 3, max_num_of_participants: 10, price: 30, current_price: 30, price_per_user: 30, grade: "Première", summary: "Les places étaient attribuées en fonction de la classe sociale : les premiers rangs étaient réservés aux citoyens importants", description: "Les places étaient attribuées en fonction de la classe sociale : les premiers rangs étaient réservés aux citoyens importants", duration: 60, starts_at: "10:00", date: "2018-12-16")
lesson_damien_1.skill_list.add("Caractéristiques", "Transition", "Drame romantique")
lesson_damien_1.objective_list.add("La première tragédie", "L’origine du théâtre", "Les tragédies antiques")
lesson_damien_1.save!

#SVT

lesson_edward_5 = Lesson.create!(teacher: edward, name: "Les médicaments", topic: "SVT", subtopic: "Biologie", min_num_of_participants: 3, max_num_of_participants: 10, price: 30, current_price: 30, price_per_user: 30, grade: "Terminale", summary: "Elevé dans le cadre d’une culture (destinée à produire de la biomasse végétale)", description: "Cours de Pierre! Sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "19:00", date: "2018-12-22")
lesson_edward_5.skill_list.add("Pollution", "Air", "Daft")
lesson_edward_5.objective_list.add("Surfaces au sol", "Quantités d’eau", "Quantités d’air")
lesson_edward_5.save!

lesson_anna_4 = Lesson.create!(teacher: anna, name: "La formation des images", topic: "SVT", subtopic: "Biologie", min_num_of_participants: 3, max_num_of_participants: 10, price: 35, current_price: 35, price_per_user: 35, grade: "première", summary: "Elevé dans le cadre d’une culture (destinée à produire de la biomasse végétale)", description: "Elevé dans le cadre d’une culture (destinée à produire de la biomasse végétale) Maxime autem labore ullam temporibus animi, mollitia aliquid magni sint harum sapiente laborum odio nobis saepe sit.", duration: 45, starts_at: "19:30", date: "2018-12-20")
lesson_anna_4.skill_list.add("Pollution", "Air", "Daft")
lesson_anna_4.objective_list.add("Surfaces au sol", "Quantités d’eau", "Quantités d’air")
lesson_anna_4.save!

lesson_damien_2 = Lesson.create!(teacher: damien, name: "De la lumière aux couleurs", topic: "SVT", subtopic: "Biologie", min_num_of_participants: 3, max_num_of_participants: 10, price: 25, current_price: 25, price_per_user: 25, grade: "Terminale", summary: "Elevé dans le cadre d’une culture (destinée à produire de la biomasse végétale)", description: "Elevé dans le cadre d’une culture (destinée à produire de la biomasse végétale) Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "19:30", date: "2018-12-26")
lesson_damien_2.skill_list.add("Pollution", "Air", "Daft")
lesson_damien_2.objective_list.add("Surfaces au sol", "Quantités d’eau", "Quantités d’air")
lesson_damien_2.save!

lesson_charles_2 = Lesson.create!(teacher: charles, name: "Les Mutations Génétiques", topic: "SVT", subtopic: "Génétique", min_num_of_participants: 3, max_num_of_participants: 10, price: 40, current_price: 40, price_per_user: 40, grade: "Terminale", summary: "Elevé dans le cadre d’une culture (destinée à produire de la biomasse végétale)", description: "Elevé dans le cadre d’une culture (destinée à produire de la biomasse végétale) Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "19:45", date: "2018-12-21")
lesson_charles_2.skill_list.add("Pollution", "Air", "Daft")
lesson_charles_2.objective_list.add("Surfaces au sol", "Quantités d’eau", "Quantités d’air")
lesson_charles_2.save!

lesson_edward_6 = Lesson.create!(teacher: edward, name: "De l'œil au cerveau", topic: "SVT", subtopic: "Biologie", min_num_of_participants: 3, max_num_of_participants: 10, price: 30, current_price: 30, price_per_user: 30, grade: "Terminale", summary: "Elevé dans le cadre d’une culture (destinée à produire de la biomasse végétale)", description: "Elevé dans le cadre d’une culture (destinée à produire de la biomasse végétale) Maxime autem labore ullam temporibus animi necessitatibus et dolores incidunt totam.", duration: 60, starts_at: "13:00", date: "2018-12-11")
lesson_edward_6.skill_list.add("Pollution", "Air", "Daft")
lesson_edward_6.objective_list.add("Surfaces au sol", "Quantités d’eau", "Quantités d’air")
lesson_edward_6.save!


past_helo_5 = Lesson.create!(teacher: helo, name: "Machiavelli - Le Prince", topic: "SVT", subtopic: "Machiavelli", min_num_of_participants: 3, max_num_of_participants: 10, price: 25, current_price: 25, price_per_user: 25, grade: "Terminale", summary: "Chômage modéré sur la période, sauf dans les périodes de crise", description: "Chômage modéré sur la période, sauf dans les périodes de crise", duration: 60, starts_at: "19:30", date: "2018-12-16")
past_helo_5.skill_list.add("Pollution", "Air", "Daft")
past_helo_5.objective_list.add("Surfaces au sol", "Quantités d’eau", "Quantités d’air")
past_helo_5.save!

past_damien_3 = Lesson.create!(teacher: damien, name: "Camus l'Étranger", topic: "SVT", subtopic: "Analyse litéraire", min_num_of_participants: 3, max_num_of_participants: 10, price: 26, current_price: 25, price_per_user: 25, grade: "Première", summary: "Chômage modéré sur la période, sauf dans les périodes de crise", description: "Cours sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "15:00", date: "2018-12-21")
past_damien_3.skill_list.add("Pollution", "Air", "Daft")
past_damien_3.objective_list.add("Surfaces au sol", "Quantités d’eau", "Quantités d’air")
past_damien_3.save!

past_damien_4 = Lesson.create!(teacher: damien, name: "Enjeux Planétaires 1", topic: "SVT", subtopic: "Enjeux Planétaires", min_num_of_participants: 3, max_num_of_participants: 10, price: 25, current_price: 25, price_per_user: 25, grade: "Première", summary: "Chômage modéré sur la période, sauf dans les périodes de crise", description: "Chômage modéré sur la période, sauf dans les périodes de crise", duration: 60, starts_at: "13:30", date: "2018-12-16")
past_damien_4.skill_list.add("Pollution", "Air", "Daft")
past_damien_4.objective_list.add("Surfaces au sol", "Quantités d’eau", "Quantités d’air")
past_damien_4.save!

past_helo_6 = Lesson.create!(teacher: helo, name: "Enjeux Planétaires 1", topic: "SVT", subtopic: "Enjeux Planétaires", min_num_of_participants: 3, max_num_of_participants: 10, price: 25, current_price: 25, price_per_user: 25, grade: "Première", summary: "Chômage modéré sur la période, sauf dans les périodes de crise", description: "Chômage modéré sur la période, sauf dans les périodes de crise", duration: 60, starts_at: "13:30", date: "2018-12-11")
past_helo_6.skill_list.add("Pollution", "Air", "Daft")
past_helo_6.objective_list.add("Surfaces au sol", "Quantités d’eau", "Quantités d’air")
past_helo_6.save!

past_charles_3 = Lesson.create!(teacher: charles, name: "Enjeux Planétaires 1", topic: "SVT", subtopic: "Enjeux Planétaires", min_num_of_participants: 3, max_num_of_participants: 10, price: 25, current_price: 25, price_per_user: 25, grade: "Première", summary: "Chômage modéré sur la période, sauf dans les périodes de crise", description: "Cours sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "13:30", date: "2018-12-22")
past_charles_3.skill_list.add("Pollution", "Air", "Daft")
past_charles_3.objective_list.add("Surfaces au sol", "Quantités d’eau", "Quantités d’air")
past_charles_3.save!

past_damien_5 = Lesson.create!(teacher: damien, name: "Enjeux Planétaires 1", topic: "SVT", subtopic: "Enjeux Planétaires", min_num_of_participants: 3, max_num_of_participants: 10, price: 25, current_price: 25, price_per_user: 25, grade: "Première", summary: "Chômage modéré sur la période, sauf dans les périodes de crise", description: "Chômage modéré sur la période, sauf dans les périodes de crise", duration: 60, starts_at: "13:30", date: "2018-12-26")
past_damien_5.skill_list.add("Pollution", "Air", "Daft")
past_damien_5.objective_list.add("Surfaces au sol", "Quantités d’eau", "Quantités d’air")
past_damien_5.save!

#Philo

lesson_helo_5 = Lesson.create!(teacher: helo, name: "Le buddhisme pour les nuls", topic: "Philosophie", subtopic: "La religion", min_num_of_participants: 3, max_num_of_participants: 10, price: 30, current_price: 30, price_per_user: 30, grade: "Première", summary: "La croissance de la population active", description: "La croissance de la population active.", duration: 60, starts_at: "10:00", date: "2018-12-16")
lesson_helo_5.skill_list.add("Méditer", "Prier", "Dormir")
lesson_helo_5.objective_list.add("Comprendre", "Apprendre", "Travailler")
lesson_helo_5.save!

lesson_helo_6 = Lesson.create!(teacher: helo, name: "Comment helo correctement", topic: "Philosophie", subtopic: "Bien parlé!", min_num_of_participants: 3, max_num_of_participants: 10, price: 100, current_price: 100, price_per_user: 100, grade: "Première", summary: "La croissance de la population active.", description: "Chômage modéré sur la période, sauf dans les périodes de crise", duration: 60, starts_at: "16:00", date: "2018-12-11")
lesson_helo_6.skill_list.add("Méditer", "Prier", "Dormir")
lesson_helo_6.objective_list.add("Comprendre", "Apprendre", "Travailler")
lesson_helo_6.save!

lesson_charles_4 = Lesson.create!(teacher: charles, name: "De l'écriture de bienvenue", topic: "Philosophie", subtopic: "Orthographe", min_num_of_participants: 3, max_num_of_participants: 10, price: 30, current_price: 30, price_per_user: 30, grade: "Terminale", summary: "La croissance de la population active.", description: "Chômage modéré sur la période, sauf dans les périodes de crise", duration: 60, starts_at: "19:00", date: "2018-12-16")
lesson_charles_4.skill_list.add("Méditer", "Prier", "Dormir")
lesson_charles_4.objective_list.add("Comprendre", "Apprendre", "Travailler")
lesson_charles_4.save!

lesson_charles_5 = Lesson.create!(teacher: charles, name: "comment vomit-on ?", topic: "Philosophie", subtopic: "Biologie", min_num_of_participants: 3, max_num_of_participants: 10, price: 30, current_price: 30, price_per_user: 30 , grade: "première", summary: "La croissance de la population active.", description: "La croissance de la population active.", duration: 45, starts_at: "19:30", date: "2018-12-21")
lesson_charles_5.skill_list.add("Méditer", "Prier", "Dormir")
lesson_charles_5.objective_list.add("Comprendre", "Apprendre", "Travailler")
lesson_charles_5.save!

lesson_helo_7 = Lesson.create!(teacher: helo, name: "Nietzsche et les bisounours", topic: "Philosophie", subtopic: "Nietzsche", min_num_of_participants: 3, max_num_of_participants: 10, price: 25, current_price: 25, price_per_user: 25, grade: "Terminale", summary: "La croissance de la population active.", description: "Chômage modéré sur la période, sauf dans les périodes de crise", duration: 60, starts_at: "19:30", date: "2018-12-22")
lesson_helo_7.skill_list.add("Méditer", "Prier", "Dormir")
lesson_helo_7.objective_list.add("Comprendre", "Apprendre", "Travailler")
lesson_helo_7.save!

lesson_anna_5 = Lesson.create!(teacher: anna, name: "La trisomie", topic: "Philosophie", subtopic: "Génétique", min_num_of_participants: 3, max_num_of_participants: 10, price: 25, current_price: 25, price_per_user: 25, grade: "Terminale", summary: "La croissance de la population active.", description: "Chômage modéré sur la période, sauf dans les périodes de crise", duration: 60, starts_at: "19:45", date: "2018-12-20")
lesson_anna_5.skill_list.add("Méditer", "Prier", "Dormir")
lesson_anna_5.objective_list.add("Comprendre", "Apprendre", "Travailler")
lesson_anna_5.save!

lesson_damien_3 = Lesson.create!(teacher: damien, name: "Systèmes - combinaison", topic: "Mathématiques", subtopic: "Equations et inéquations", min_num_of_participants: 3, max_num_of_participants: 10, price: 20, current_price: 20, price_per_user: 20, grade: "Première", summary: "Cours sur la résolution du système.", description: "Inconnues connues", duration: 13, starts_at: "13:00", date: "2018-12-21")
lesson_damien_3.skill_list.add("skill1", "skill2", "skill3")
lesson_damien_3.objective_list.add("Comprendre", "Apprendre", "Travailler")
lesson_damien_3.save!



Participation.create!(user: anna, lesson: lesson_damien)
lesson_damien.update_price_per_user
Participation.create!(user: nico, lesson: lesson_helo)
lesson_helo.update_price_per_user
Participation.create!(user: anna, lesson: lesson_helo)
lesson_helo.update_price_per_user
Participation.create!(user: nico, lesson: lesson_lily)
lesson_lily.update_price_per_user
Participation.create!(user: helo, lesson: lesson_anna)
lesson_anna.update_price_per_user
Participation.create!(user: helo, lesson: lesson_germain)
lesson_germain.update_price_per_user
Participation.create!(user: anna, lesson: lesson_germain)
lesson_germain.update_price_per_user
Participation.create!(user: lily, lesson: lesson_pierre)
lesson_pierre.update_price_per_user

Participation.create!(user: lily, lesson: lesson_anna_replay)
lesson_anna_replay.update_price_per_user

Participation.create!(user: anna, lesson: past_lesson5_lily)
past_lesson5_lily.update_price_per_user



review1_lesson_nico = Review.create!(content: "Prof complètement perché, j'ai pas compris", rating: 1, user: nico)

review2_lesson_nico = Review.create!(content: "du jamais vu ...", rating: 2, user: nico)


review1_lesson_anna = Review.create!(content: "Très organisée, très bonne prof", rating: 5, user: anna )
review2_lesson_anna = Review.create!(content: "Parfois un peu trop rapide, mais excellente pédagogie", rating: 5, user: anna)


review1_lesson_lily = Review.create!(content: "Le français comme jamais je l'avais envisagé !", rating: 5, user: lily )
review2_lesson_lily = Review.create!(content: "On redécouvre notre propre langue, un régal !", rating: 4, user: lily )

review1_lesson_helo = Review.create!(content: "Clair et concis", rating: 3, user: helo)
review2_lesson_helo = Review.create!(content: "Concis et clair", rating: 3, user: helo )

puts "4 users, 14 lessons, 8 participations and 8 reviews created"


