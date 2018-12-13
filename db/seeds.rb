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
germain = User.create!(email: "germain@gmail.com", password: "123456", first_name: "Germain", last_name: "Loret")
damien = User.create!(email: "damien@gmail.com", password: "123456", first_name: "Damien", last_name: "Milon")
edward = User.create!(email: "edward@gmail.com", password: "123456", first_name: "Edward", last_name: "Schults")
charles = User.create!(email: "charles@gmail.com", password: "123456", first_name: "Charles", last_name: "Pernet")


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

past_lesson4_lily = Lesson.create!(teacher: anna, name: "Introduction aux Statistiques", topic: "Mathématiques", subtopic: "Statisques", min_num_of_participants: 3, max_num_of_participants: 10, price: 25, current_price: 25, price_per_user: 25, grade: "Terminale", summary: "déterminer la moyenne, la variance et l'écart-type d'une série statistique", description: "Cours sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "19:30", date: "2018-12-16")
past_lesson4_lily.skill_list.add("skill1", "skill2", "skill3")
past_lesson4_lily.objective_list.add("Premier Objectif", "Deuxième Objectif", "Troisième Objectif")
past_lesson4_lily.save!

past_lesson5_lily = Lesson.create!(teacher: nico, name: "Sens de variation d'une fonction", topic: "Mathématiques", subtopic: "Généralités sur les fonctions", min_num_of_participants: 3, max_num_of_participants: 10, price: 25, current_price: 25, price_per_user: 25, grade: "Terminale", summary: "Apprendre à étudier le sens de variation d'une fonction sur un intervalle et étude du m ajorant et maximum d'une fonction sur IR", description: "Cours sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "19:20", date: "2018-12-11")
past_lesson5_lily.skill_list.add("skill1", "skill2", "skill3")
past_lesson5_lily.objective_list.add("Etudier le sens de variation d'une fonction sur un intervalle", "Majorant et maximum d'une fonction sur IR")
past_lesson5_lily.save!

lesson_lily = Lesson.create!(teacher: anna, name: "Identités trigonométriques", topic: "Mathématiques", subtopic: "Les suites", min_num_of_participants: 3, max_num_of_participants: 10, price: 25, current_price: 25, price_per_user: 25, grade: "Terminale", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", description: "Cours sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "18:00", date: "2018-12-16",channel_id: "nUiFUbzPorg")
lesson_lily.skill_list.add("skill1", "skill2", "skill3")
lesson_lily.objective_list.add("Premier Objectif", "Deuxième Objectif", "Troisième Objectif")
lesson_lily.save!


lesson_lily_10 = Lesson.create!(teacher: lily, name: "Faire les choses aux bols", topic: "Français", subtopic: "Bien parlé!", min_num_of_participants: 3, max_num_of_participants: 10, price: 100, current_price: 100, price_per_user: 100, grade: "Première", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", description: "Cours sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "16:00", date: "2018-12-16",channel_id: "1ux79Xb9YLI")
lesson_lily_10.skill_list.add("skill1", "skill2", "skill3")
lesson_lily_10.objective_list.add("Premier Objectif", "Deuxième Objectif", "Troisième Objectif")
lesson_lily_10.save!

lesson_lily_8 = Lesson.create!(teacher: lily, name: "Faire les choses aux bols", topic: "Français", subtopic: "Bien parlé!", min_num_of_participants: 3, max_num_of_participants: 10, price: 100, current_price: 100, price_per_user: 100, grade: "Première", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", description: "Cours sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "16:00", date: "2018-12-16",channel_id: "1ux79Xb9YLI")
lesson_lily_8.skill_list.add("skill1", "skill2", "skill3")
lesson_lily_8.objective_list.add("Premier Objectif", "Deuxième Objectif", "Troisième Objectif")
lesson_lily_8.save!

lesson_lily_7 = Lesson.create!(teacher: lily, name: "Faire les choses aux bols", topic: "Français", subtopic: "Bien parlé!", min_num_of_participants: 3, max_num_of_participants: 10, price: 100, current_price: 100, price_per_user: 100, grade: "Première", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", description: "Cours sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "16:00", date: "2018-12-16",channel_id: "1ux79Xb9YLI")
lesson_lily_7.skill_list.add("skill1", "skill2", "skill3")
lesson_lily_7.objective_list.add("Premier Objectif", "Deuxième Objectif", "Troisième Objectif")
lesson_lily_7.save!


lesson_anna = Lesson.create!(teacher: anna, name: "les Misérables (en code)", topic: "Français", subtopic: "Roman", min_num_of_participants: 3, max_num_of_participants: 10, price: 20, current_price: 20, price_per_user: 20, grade: "première", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", description: "Cours sur les Misérables avec Anna Hercot, professeur agrégée, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus.", duration: 45, starts_at: "18:00", date: "2018-12-16")
lesson_anna.skill_list.add("skill1", "skill2", "skill3")
lesson_anna.objective_list.add("Premier Objectif", "Deuxième Objectif", "Troisième Objectif")
lesson_anna.save!

lesson_germain = Lesson.create!(teacher: nico, name: "Néo et la Matrice", topic: "Français", subtopic: "Matrices", min_num_of_participants: 4, max_num_of_participants: 6, price: 25, current_price: 25, price_per_user: 25, grade: "Terminale", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", description: "Cours sur les identités trigonométriques avec Germain. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "14:00", date: "2018-12-16")
lesson_germain.skill_list.add("skill1", "skill2", "skill3")
lesson_germain.objective_list.add("Premier Objectif", "Deuxième Objectif", "Troisième Objectif")
lesson_germain.save!

lesson_damien = Lesson.create!(teacher: helo, name: "Le judaïsme pour les nuls", topic: "Français", subtopic: "La religion", min_num_of_participants: 3, max_num_of_participants: 10, price: 30, current_price: 30, price_per_user: 30, grade: "Première", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", description: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus et dolores incidunt totam.", duration: 60, starts_at: "10:00", date: "2018-12-16")
lesson_damien.skill_list.add("skill1", "skill2", "skill3")
lesson_damien.objective_list.add("Premier Objectif", "Deuxième Objectif", "Troisième Objectif")
lesson_damien.save!

lesson_pierre = Lesson.create!(teacher: lily, name: "De l'écriture de leçon", topic: "SVT", subtopic: "Orthographe", min_num_of_participants: 3, max_num_of_participants: 10, price: 30, current_price: 30, price_per_user: 30, grade: "Terminale", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", description: "Cours de Pierre! Sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "19:00", date: "2018-12-16")
lesson_pierre.skill_list.add("skill1", "skill2", "skill3")
lesson_pierre.objective_list.add("Premier Objectif", "Deuxième Objectif", "Troisième Objectif")
lesson_pierre.save!

lesson_david = Lesson.create!(teacher: anna, name: "Les médicaments anti-vomissements", topic: "SVT", subtopic: "Biologie", min_num_of_participants: 3, max_num_of_participants: 10, price: 30, current_price: 30, price_per_user: 30 , grade: "première", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", description: "Cours sur les Misérables avec David, professeur agrégé, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi, mollitia aliquid magni sint harum sapiente laborum odio nobis saepe sit.", duration: 45, starts_at: "19:30", date: "2018-12-16")
lesson_david.skill_list.add("skill1", "skill2", "skill3")
lesson_david.objective_list.add("Premier Objectif", "Deuxième Objectif", "Troisième Objectif")
lesson_david.save!

lesson_philo = Lesson.create!(teacher: lily, name: "Nietzsche - l'Antéchrist", topic: "SVT", subtopic: "Nietzsche", min_num_of_participants: 3, max_num_of_participants: 10, price: 25, current_price: 25, price_per_user: 25, grade: "Terminale", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", description: "Cours sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "19:30", date: "2018-12-16")
lesson_philo.skill_list.add("skill1", "skill2", "skill3")
lesson_philo.objective_list.add("Premier Objectif", "Deuxième Objectif", "Troisième Objectif")
lesson_philo.save!


lesson_svt = Lesson.create!(teacher: lily, name: "Les Mutations Génétiques", topic: "SVT", subtopic: "Génétique", min_num_of_participants: 3, max_num_of_participants: 10, price: 25, current_price: 25, price_per_user: 25, grade: "Terminale", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", description: "Cours sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "19:45", date: "2018-12-16")
lesson_svt.skill_list.add("skill1", "skill2", "skill3")
lesson_svt.objective_list.add("Premier Objectif", "Deuxième Objectif", "Troisième Objectif")
lesson_svt.save!

lesson_trigo = Lesson.create!(teacher: lily, name: "La trigo et moi", topic: "SVT", subtopic: "Trigonométrie", min_num_of_participants: 4, max_num_of_participants: 6, price: 40, current_price: 40, price_per_user: 40, grade: "Terminale", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", description: "Cours sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem. Maxime autem labore ullam temporibus animi necessitatibus et dolores incidunt totam.", duration: 60, starts_at: "17:00", date: "2018-12-16")
lesson_trigo.skill_list.add("skill1", "skill2", "skill3")
lesson_trigo.objective_list.add("Premier Objectif", "Deuxième Objectif", "Troisième Objectif")
lesson_trigo.save!

lesson_conscience = Lesson.create!(teacher: nico, name: "La conscience de toi", topic: "SVT", subtopic: "La conscience", min_num_of_participants: 3, max_num_of_participants: 10, price: 30, current_price: 30, price_per_user: 30, grade: "Terminale", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", description: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus et dolores incidunt totam.", duration: 60, starts_at: "13:00", date: "2018-12-16")
lesson_conscience.skill_list.add("skill1", "skill2", "skill3")
lesson_conscience.objective_list.add("Premier Objectif", "Deuxième Objectif", "Troisième Objectif")
lesson_conscience.save!


lesson_buddhisme = Lesson.create!(teacher: helo, name: "Le buddhisme pour les nuls", topic: "Philosophie", subtopic: "La religion", min_num_of_participants: 3, max_num_of_participants: 10, price: 30, current_price: 30, price_per_user: 30, grade: "Première", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", description: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus et dolores incidunt totam.", duration: 60, starts_at: "10:00", date: "2018-12-16")
lesson_buddhisme.skill_list.add("skill1", "skill2", "skill3")
lesson_buddhisme.objective_list.add("Premier Objectif", "Deuxième Objectif", "Troisième Objectif")
lesson_buddhisme.save!

lesson_parler = Lesson.create!(teacher: anna, name: "Comment parler correctement", topic: "Philosophie", subtopic: "Bien parlé!", min_num_of_participants: 3, max_num_of_participants: 10, price: 100, current_price: 100, price_per_user: 100, grade: "Première", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", description: "Cours sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "16:00", date: "2018-12-16",channel_id: "1ux79Xb9YLI")
lesson_parler.skill_list.add("skill1", "skill2", "skill3")
lesson_parler.objective_list.add("Premier Objectif", "Deuxième Objectif", "Troisième Objectif")
lesson_parler.save!

lesson_bienvenue = Lesson.create!(teacher: helo, name: "De l'écriture de bienvenue", topic: "Philosophie", subtopic: "Orthographe", min_num_of_participants: 3, max_num_of_participants: 10, price: 30, current_price: 30, price_per_user: 30, grade: "Terminale", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", description: "Cours de Pierre! Sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "19:00", date: "2018-12-16")
lesson_parler.skill_list.add("skill1", "skill2", "skill3")
lesson_parler.objective_list.add("Premier Objectif", "Deuxième Objectif", "Troisième Objectif")
lesson_parler.save!

lesson_pourquoi = Lesson.create!(teacher: nico, name: "Pourquoi vomit-on ?", topic: "Philosophie", subtopic: "Biologie", min_num_of_participants: 3, max_num_of_participants: 10, price: 30, current_price: 30, price_per_user: 30 , grade: "première", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", description: "Cours sur les Misérables avec David, professeur agrégé, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi, mollitia aliquid magni sint harum sapiente laborum odio nobis saepe sit.", duration: 45, starts_at: "19:30", date: "2018-12-16")
lesson_pourquoi.skill_list.add("skill1", "skill2", "skill3")
lesson_pourquoi.objective_list.add("Premier Objectif", "Deuxième Objectif", "Troisième Objectif")
lesson_pourquoi.save!

lesson_bisounours = Lesson.create!(teacher: helo, name: "Nietzsche et les bisounours", topic: "Philosophie", subtopic: "Nietzsche", min_num_of_participants: 3, max_num_of_participants: 10, price: 25, current_price: 25, price_per_user: 25, grade: "Terminale", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", description: "Cours sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "19:30", date: "2018-12-16")
lesson_bisounours.skill_list.add("skill1", "skill2", "skill3")
lesson_bisounours.objective_list.add("Premier Objectif", "Deuxième Objectif", "Troisième Objectif")
lesson_bisounours.save!

lesson_trisomie = Lesson.create!(teacher: anna, name: "La trisomie", topic: "Philosophie", subtopic: "Génétique", min_num_of_participants: 3, max_num_of_participants: 10, price: 25, current_price: 25, price_per_user: 25, grade: "Terminale", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", description: "Cours sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "19:45", date: "2018-12-16")
lesson_trisomie.skill_list.add("skill1", "skill2", "skill3")
lesson_trisomie.objective_list.add("Premier Objectif", "Deuxième Objectif", "Troisième Objectif")
lesson_trisomie.save!

past_lesson1_lily = Lesson.create!(teacher: anna, name: "Machiavelli - Le Prince", topic: "SVT", subtopic: "Machiavelli", min_num_of_participants: 3, max_num_of_participants: 10, price: 25, current_price: 25, price_per_user: 25, grade: "Terminale", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", description: "Cours sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "19:30", date: "2018-12-16")
past_lesson1_lily.skill_list.add("skill1", "skill2", "skill3")
past_lesson1_lily.objective_list.add("Premier Objectif", "Deuxième Objectif", "Troisième Objectif")
past_lesson1_lily.save!

past_lesson2_lily = Lesson.create!(teacher: nico, name: "Camus l'Étranger", topic: "SVT", subtopic: "Analyse litéraire", min_num_of_participants: 3, max_num_of_participants: 10, price: 26, current_price: 25, price_per_user: 25, grade: "Terminale", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", description: "Cours sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "15:00", date: "2018-12-16")
past_lesson2_lily.skill_list.add("skill1", "skill2", "skill3")
past_lesson2_lily.objective_list.add("Premier Objectif", "Deuxième Objectif", "Troisième Objectif")
past_lesson2_lily.save!

past_lesson3_lily = Lesson.create!(teacher: helo, name: "Enjeux Planétaires 1", topic: "SVT", subtopic: "Enjeux Planétaires", min_num_of_participants: 3, max_num_of_participants: 10, price: 25, current_price: 25, price_per_user: 25, grade: "Terminale", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", description: "Cours sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "13:30", date: "2018-12-16")
past_lesson3_lily.skill_list.add("skill1", "skill2", "skill3")
past_lesson3_lily.objective_list.add("Premier Objectif", "Deuxième Objectif", "Troisième Objectif")
past_lesson3_lily.save!

past_lesson10_lily = Lesson.create!(teacher: helo, name: "Enjeux Planétaires 1", topic: "SVT", subtopic: "Enjeux Planétaires", min_num_of_participants: 3, max_num_of_participants: 10, price: 25, current_price: 25, price_per_user: 25, grade: "Terminale", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", description: "Cours sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "13:30", date: "2018-12-16")
past_lesson10_lily.skill_list.add("skill1", "skill2", "skill3")
past_lesson10_lily.objective_list.add("Premier Objectif", "Deuxième Objectif", "Troisième Objectif")
past_lesson10_lily.save!

past_lesson11_lily = Lesson.create!(teacher: helo, name: "Enjeux Planétaires 1", topic: "SVT", subtopic: "Enjeux Planétaires", min_num_of_participants: 3, max_num_of_participants: 10, price: 25, current_price: 25, price_per_user: 25, grade: "Terminale", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", description: "Cours sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "13:30", date: "2018-12-16")
past_lesson11_lily.skill_list.add("skill1", "skill2", "skill3")
past_lesson11_lily.objective_list.add("Premier Objectif", "Deuxième Objectif", "Troisième Objectif")
past_lesson11_lily.save!

past_lesson14_lily = Lesson.create!(teacher: helo, name: "Enjeux Planétaires 1", topic: "SVT", subtopic: "Enjeux Planétaires", min_num_of_participants: 3, max_num_of_participants: 10, price: 25, current_price: 25, price_per_user: 25, grade: "Terminale", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", description: "Cours sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "13:30", date: "2018-12-16")
past_lesson14_lily.skill_list.add("skill1", "skill2", "skill3")
past_lesson14_lily.objective_list.add("Premier Objectif", "Deuxième Objectif", "Troisième Objectif")
past_lesson14_lily.save!

lesson_helo = Lesson.create!(teacher: anna, name: "Systèmes - combinaison", topic: "Mathématiques", subtopic: "Equations et inéquations", min_num_of_participants: 3, max_num_of_participants: 10, price: 20, current_price: 20, price_per_user: 20, grade: "Première", summary: "Cours sur la résolution de système à deux inconnues et deux équations.", description: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus et dolores incidunt totam.", duration: 13, starts_at: "13:00", date: "2018-12-16")
lesson_helo.skill_list.add("skill1", "skill2", "skill3")
lesson_helo.objective_list.add("Premier Objectif", "Deuxième Objectif", "Troisième Objectif")
lesson_helo.save!


# COURS HELO
Participation.create!(user: anna, lesson: lesson_helo_1)
lesson_helo_1.update_price_per_user_up
Participation.create!(user: nico, lesson: lesson_helo_1)
lesson_helo_1.update_price_per_user_up
Participation.create!(user: charles, lesson: lesson_helo_1)
lesson_helo_1.update_price_per_user_up
Participation.create!(user: germain, lesson: lesson_helo_1)
lesson_helo_1.update_price_per_user_up
Participation.create!(user: damien, lesson: lesson_helo_1)
lesson_helo_1.update_price_per_user_up

Participation.create!(user: anna, lesson: lesson_helo_2)
lesson_helo_2.update_price_per_user_up
Participation.create!(user: nico, lesson: lesson_helo_2)
lesson_helo_2.update_price_per_user_up
Participation.create!(user: charles, lesson: lesson_helo_2)
lesson_helo_2.update_price_per_user_up
Participation.create!(user: germain, lesson: lesson_helo_2)
lesson_helo_2.update_price_per_user_up
Participation.create!(user: damien, lesson: lesson_helo_2)
lesson_helo_2.update_price_per_user_up
Participation.create!(user: edward, lesson: lesson_helo_2)
lesson_helo_2.update_price_per_user_up

Participation.create!(user: anna, lesson: lesson_helo_3)
lesson_helo_3.update_price_per_user_up
Participation.create!(user: germain, lesson: lesson_helo_3)
lesson_helo_3.update_price_per_user_up
Participation.create!(user: damien, lesson: lesson_helo_3)
lesson_helo_3.update_price_per_user_up
Participation.create!(user: edward, lesson: lesson_helo_3)
lesson_helo_3.update_price_per_user_up

Participation.create!(user: damien, lesson: lesson_helo_4)
lesson_helo_4.update_price_per_user_up
Participation.create!(user: edward, lesson: lesson_helo_4)
lesson_helo_4.update_price_per_user_up

#COURS ANNA
Participation.create!(user: edward, lesson: lesson_anna_replay)
lesson_anna_replay.update_price_per_user_up
Participation.create!(user: nico, lesson: lesson_anna_replay)
lesson_anna_replay.update_price_per_user_up
Participation.create!(user: charles, lesson: lesson_anna_replay)
lesson_anna_replay.update_price_per_user_up
Participation.create!(user: germain, lesson: lesson_anna_replay)
lesson_anna_replay.update_price_per_user_up
Participation.create!(user: damien, lesson: lesson_anna_replay)
lesson_anna_replay.update_price_per_user_up

Participation.create!(user: nico, lesson: lesson_anna_inscription)
lesson_anna_inscription.update_price_per_user_up
Participation.create!(user: charles, lesson: lesson_anna_inscription)
lesson_anna_inscription.update_price_per_user_up
Participation.create!(user: germain, lesson: lesson_anna_inscription)
lesson_anna_inscription.update_price_per_user_up
Participation.create!(user: damien, lesson: lesson_anna_inscription)
lesson_anna_inscription.update_price_per_user_up
Participation.create!(user: edward, lesson: lesson_anna_inscription)
lesson_anna_inscription.update_price_per_user_up

Participation.create!(user: lily, lesson: lesson_anna_live)
lesson_anna_live.update_price_per_user_up
Participation.create!(user: germain, lesson: lesson_anna_live)
lesson_anna_live.update_price_per_user_up
Participation.create!(user: damien, lesson: lesson_anna_live)
lesson_anna_live.update_price_per_user_up
Participation.create!(user: edward, lesson: lesson_anna_live)
lesson_anna_live.update_price_per_user_up


#COURS GERMAIN
Participation.create!(user: anna, lesson: lesson_germain_1)
lesson_germain_1.update_price_per_user_up
Participation.create!(user: nico, lesson: lesson_germain_1)
lesson_germain_1.update_price_per_user_up
Participation.create!(user: lily, lesson: lesson_germain_1)
lesson_germain_1.update_price_per_user_up


Participation.create!(user: anna, lesson: lesson_germain_2)
lesson_germain_2.update_price_per_user_up
Participation.create!(user: nico, lesson: lesson_germain_2)
lesson_germain_2.update_price_per_user_up
Participation.create!(user: helo, lesson: lesson_germain_2)
lesson_germain_2.update_price_per_user_up
Participation.create!(user: edward, lesson: lesson_germain_2)
lesson_germain_2.update_price_per_user_up
Participation.create!(user: damien, lesson: lesson_germain_2)
lesson_germain_2.update_price_per_user_up


Participation.create!(user: anna, lesson: lesson_germain_3)
lesson_germain_3.update_price_per_user_up
Participation.create!(user: damien, lesson: lesson_germain_3)
lesson_germain_3.update_price_per_user_up
Participation.create!(user: edward, lesson: lesson_germain_3)
lesson_germain_3.update_price_per_user_up

Participation.create!(user: damien, lesson: lesson_germain_4)
lesson_germain_4.update_price_per_user_up
Participation.create!(user: edward, lesson: lesson_germain_4)
lesson_germain_4.update_price_per_user_up
Participation.create!(user: nico, lesson: lesson_germain_4)
lesson_germain_4.update_price_per_user_up
Participation.create!(user: helo, lesson: lesson_germain_4)
lesson_germain_4.update_price_per_user_up

#COURS DAMIEN
Participation.create!(user: anna, lesson: lesson_damien_1)
lesson_damien_1.update_price_per_user_up
Participation.create!(user: nico, lesson: lesson_damien_1)
lesson_damien_1.update_price_per_user_up



Participation.create!(user: anna, lesson: lesson_damien_2)
lesson_damien_2.update_price_per_user_up
Participation.create!(user: nico, lesson: lesson_damien_2)
lesson_damien_2.update_price_per_user_up
Participation.create!(user: helo, lesson: lesson_damien_2)
lesson_damien_2.update_price_per_user_up



Participation.create!(user: anna, lesson: lesson_damien_3)
lesson_damien_3.update_price_per_user_up
Participation.create!(user: helo, lesson: lesson_damien_3)
lesson_damien_3.update_price_per_user_up
Participation.create!(user: germain, lesson: lesson_damien_3)
lesson_damien_3.update_price_per_user_up

Participation.create!(user: germain, lesson: lesson_damien_4)
lesson_damien_4.update_price_per_user_up
Participation.create!(user: edward, lesson: lesson_damien_4)
lesson_damien_4.update_price_per_user_up

#COURS EDWARD
Participation.create!(user: anna, lesson: lesson_edward_1)
lesson_edward_1.update_price_per_user_up
Participation.create!(user: nico, lesson: lesson_edward_1)
lesson_edward_1.update_price_per_user_up
Participation.create!(user: lily, lesson: lesson_edward_1)
lesson_edward_1.update_price_per_user_up


Participation.create!(user: anna, lesson: lesson_edward_2)
lesson_edward_2.update_price_per_user_up
Participation.create!(user: nico, lesson: lesson_edward_2)
lesson_edward_2.update_price_per_user_up
Participation.create!(user: charles, lesson: lesson_edward_2)
lesson_edward_2.update_price_per_user_up
Participation.create!(user: germain, lesson: lesson_edward_2)
lesson_edward_2.update_price_per_user_up
Participation.create!(user: damien, lesson: lesson_edward_2)
lesson_edward_2.update_price_per_user_up


Participation.create!(user: anna, lesson: lesson_edward_3)
lesson_edward_3.update_price_per_user_up
Participation.create!(user: damien, lesson: lesson_edward_3)
lesson_edward_3.update_price_per_user_up
Participation.create!(user: germain, lesson: lesson_edward_3)
lesson_edward_3.update_price_per_user_up

Participation.create!(user: damien, lesson: lesson_edward_4)
lesson_edward_4.update_price_per_edward
Participation.create!(user: germain, lesson: lesson_edward_4)
lesson_edward_4.update_price_per_user_up
Participation.create!(user: nico, lesson: lesson_edward_4)
lesson_edward_4.update_price_per_user_up
Participation.create!(user: charles, lesson: lesson_edward_4)
lesson_edward_4.update_price_per_user_up

#COURS CHARLES
Participation.create!(user: anna, lesson: lesson_charles_1)
lesson_charles_1.update_price_per_user_up
Participation.create!(user: nico, lesson: lesson_charles_1)
lesson_charles_1.update_price_per_user_up
Participation.create!(user: germain, lesson: lesson_charles_1)
lesson_charles_1.update_price_per_user_up



Participation.create!(user: anna, lesson: lesson_charles_2)
lesson_charles_2.update_price_per_user_up
Participation.create!(user: nico, lesson: lesson_charles_2)
lesson_charles_2.update_price_per_user_up
Participation.create!(user: germain, lesson: lesson_charles_2)
lesson_charles_2.update_price_per_user_up
Participation.create!(user: edward, lesson: lesson_charles_2)
lesson_charles_2.update_price_per_user_up
Participation.create!(user: damien, lesson: lesson_charles_2)
lesson_charles_2.update_price_per_user_up


Participation.create!(user: anna, lesson: lesson_charles_3)
lesson_charles_3.update_price_per_user_up
Participation.create!(user: damien, lesson: lesson_charles_3)
lesson_charles_3.update_price_per_user_up
Participation.create!(user: edward, lesson: lesson_charles_3)
lesson_charles_3.update_price_per_user_up

Participation.create!(user: damien, lesson: lesson_charles_4)
lesson_charles_4.update_price_per_user_up
Participation.create!(user: edward, lesson: lesson_charles
lesson_charles_4.update_price_per_user_up
Participation.create!(user: nico, lesson: lesson_charles_4)
lesson_charles_4.update_price_per_user_up
Participation.create!(user: germain, lesson: lesson_charles_4)
lesson_charles_4.update_price_per_user_up
Participation.create!(user: anna, lesson: lesson_charles_4)
lesson_charles_4.update_price_per_user_up
Participation.create!(user: helo, lesson: lesson_charles_4)
lesson_charles_4.update_price_per_user_up

#REVIEWS
#POUR ANNA

Review.create!(content: "Professeur de talent. Elle a réussi à me redonner confiance et à surmonter mes difficultés en quelques cours, puis à me faire progresser les cours suivants. ", rating: 5, user: anna)
Review.create!(content: "Cours très efficaces ; résultat au bac à l'appui !", rating: 5, user: anna)
Review.create!(content: "Ouverte, bienveillante, enthousiaste, efficace et extrêmement professionnelle !", rating: 4, user: anna)
Review.create!(content: "Très organisée, très bonne prof", rating: 5, user: anna )
Review.create!(content: "Parfois un peu trop rapide, mais excellente pédagogie", rating: 5, user: anna)
Review.create!(content: "Très chaleureuse, motivée , énergique, rigoureuse et méthodique redonnant l'envie d'apprendre !", rating: 5, user: anna)
Review.create!(content: "Je vous recommande ce professeur très efficace et à l'écoute de l'élève .", rating: 5, user: anna)
Review.create!(content: "Bonne énergie, positive et motivée.", rating: 5, user: anna)
Review.create!(content: "Très bon professeur, très diplomate et efficace. Sympathique, assidue et sérieuse.", rating: 5, user: anna)
Review.create!(content: "Très sérieuse et très méthodique.", rating: 4, user: anna)
Review.create!(content: "Pédagogique, didactique et structurée", rating: 4, user: anna)


#POUR HELO
Review.create!(content: "Clair et concis", rating: 4, user: helo)



#POUR GERMAIN
Review.create!(content: "Super Prof", rating: 4.5, user: germain)

#POUR EDWARD
Review.create!(content: "Super Prof", rating: 5, user: edward)

#POUR DAMIEN
Review.create!(content: "Super Prof", rating: 4, user: damien)

#POUR CHARLES
Review.create!(content: "Bon Prof", rating: 4, user: charles)



puts "8 users, a lot of lessons, a lot of participations and a lot of reviews created"



