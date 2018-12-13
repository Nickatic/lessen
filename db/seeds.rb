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


lesson_nico = Lesson.create!(teacher: nico, name: "Le cercle trigonométrique", topic: "Mathématiques", subtopic: "Trigonométrie", min_num_of_participants: 4, max_num_of_participants: 6, price: 40, current_price: 40, price_per_user: 40, grade: "Terminale", summary: "Compréhension détaillée du cercle trigonométrique avec théorie sur les radians et l'angle orienté de deux vecteurs", description: "Cours sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem. Maxime autem labore ullam temporibus animi necessitatibus et dolores incidunt totam.", duration: 60, starts_at: "17:00", date: "2018-12-16")
lesson_nico.skill_list.add("skill1", "skill2", "skill3")
lesson_nico.objective_list.add("Premier Objectif", "Deuxième Objectif", "Troisième Objectif")
lesson_nico.save!

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

lesson_anna_replay= Lesson.create!(teacher: anna, name: "Systèmes - combinaison", topic: "Mathématiques", subtopic: "Equations et inéquations", min_num_of_participants: 3, max_num_of_participants: 10, price: 20, current_price: 20, price_per_user: 20, grade: "Première", summary: "Cours sur la résolution de système à deux inconnues et deux équations.", description: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus et dolores incidunt totam.", duration: 13, starts_at: "13:00", date: "2018-12-11")
lesson_anna_replay.skill_list.add("skill1", "skill2", "skill3")
lesson_anna_replay.objective_list.add("Premier Objectif", "Deuxième Objectif", "Troisième Objectif")
lesson_anna_replay.save!

lesson_lily_2 = Lesson.create!(teacher: anna, name: "Variables aléatoires", topic: "Mathématiques", subtopic: "Probabilités", min_num_of_participants: 3, max_num_of_participants: 10, price: 100, current_price: 100, price_per_user: 100, grade: "Première", summary: "Déterminer une loi de probabilité d'une variable aléatoire", description: "Cours sur les variables aléatoires avec l'étude d'un scénario précis. Nous allons voir ensembles à résumer les informations dans un tableau et quelles valeurs assigner à la variable X dépendant du scénario.", duration: 60, starts_at: "16:00", date: "2018-12-16",channel_id: "1ux79Xb9YLI")
lesson_lily_2.skill_list.add("logique", "raisonnement")
lesson_lily_2.objective_list.add("lister l’ensemble des valeurs xi prises par  X", "Construire le tableau de probabilité", "Troisième Objectif")
lesson_lily_2.save!

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

lesson_helo = Lesson.create!(teacher: anna, name: "Systèmes - combinaison", topic: "Mathématiques", subtopic: "Equations et inéquations", min_num_of_participants: 3, max_num_of_participants: 10, price: 20, current_price: 20, price_per_user: 20, grade: "Première", summary: "Cours sur la résolution de système à deux inconnues et deux équations.", description: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus et dolores incidunt totam.", duration: 13, starts_at: "13:00", date: "2018-12-09")
lesson_helo.skill_list.add("skill1", "skill2", "skill3")
lesson_helo.objective_list.add("Premier Objectif", "Deuxième Objectif", "Troisième Objectif")
lesson_helo.save!
lesson_lily_2 = Lesson.create!(teacher: anna, name: "Variables aléatoires", topic: "Mathématiques", subtopic: "Probabilités", min_num_of_participants: 3, max_num_of_participants: 10, price: 100, current_price: 100, price_per_user: 100, grade: "Première", summary: "Déterminer une loi de probabilité d'une variable aléatoire", description: "Cours sur les variables aléatoires avec l'étude d'un scénario précis. Nous allons voir ensembles à résumer les informations dans un tableau et quelles valeurs assigner à la variable X dépendant du scénario.", duration: 60, starts_at: "16:00", date: "2018-12-12",channel_id: "1ux79Xb9YLI")
lesson_lily_2.skill_list.add("logique", "raisonnement")
lesson_lily_2.objective_list.add("lister l’ensemble des valeurs xi prises par X", "Construire le tableau de probabilité", "Troisième Objectif")
lesson_lily_2.save!



Participation.create!(user: anna, lesson: lesson_damien)
Participation.create!(user: anna, lesson: lesson_nico)
Participation.create!(user: nico, lesson: lesson_helo)
Participation.create!(user: nico, lesson: lesson_lily)
Participation.create!(user: helo, lesson: lesson_anna)
Participation.create!(user: helo, lesson: lesson_germain)
Participation.create!(user: anna, lesson: lesson_germain)
Participation.create!(user: lily, lesson: lesson_pierre)
Participation.create!(user: anna, lesson: past_lesson5_lily)


review1_lesson_nico = Review.create!(content: "Prof complètement perché, j'ai pas compris", rating: 1, user: nico)

review2_lesson_nico = Review.create!(content: "du jamais vu ...", rating: 2, user: nico)


review1_lesson_anna = Review.create!(content: "Très organisée, très bonne prof", rating: 5, user: anna )
review2_lesson_anna = Review.create!(content: "Parfois un peu trop rapide, mais excellente pédagogie", rating: 5, user: anna)


review1_lesson_lily = Review.create!(content: "Le français comme jamais je l'avais envisagé !", rating: 5, user: lily )
review2_lesson_lily = Review.create!(content: "On redécouvre notre propre langue, un régal !", rating: 4, user: lily )

review1_lesson_helo = Review.create!(content: "Clair et concis", rating: 3, user: helo)
review2_lesson_helo = Review.create!(content: "Concis et clair", rating: 3, user: helo )

puts "4 users, 14 lessons, 8 participations and 8 reviews created"


