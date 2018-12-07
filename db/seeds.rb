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


lesson_nico = Lesson.create!(teacher: nico, name: "Trigonométrie transcendentale", topic: "Mathématiques", subtopic: "Trigonométrie", min_num_of_participants: 4, max_num_of_participants: 6, price: 40, current_price: 40, price_per_user: 40, grade: "Terminale", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", objectives: "1) Première Objectif 2) Deuxième Objectif 3) Troisième Objectif", skills:"SKILL 1 SKILL 2 SKILL 3", description: "Cours sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem. Maxime autem labore ullam temporibus animi necessitatibus et dolores incidunt totam.", duration: 60, starts_at: "17:00", date: "2018-12-09")

lesson_helo = Lesson.create!(teacher: helo, name: "la conscience de soi", topic: "Philosophie", subtopic: "La conscience", min_num_of_participants: 3, max_num_of_participants: 10, price: 30, current_price: 30, price_per_user: 30, grade: "Terminale", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", objectives: "1) Première Objectif 2) Deuxième Objectif 3) Troisième Objectif", skills:"SKILL 1 SKILL 2 SKILL 3", description: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus et dolores incidunt totam.", duration: 60, starts_at: "13:00", date: "2018-12-11")

lesson_lily = Lesson.create!(teacher: lily, name: "Faire les choses aux bols", topic: "Français", subtopic: "Bien parlé!", min_num_of_participants: 3, max_num_of_participants: 10, price: 100, current_price: 100, price_per_user: 100, grade: "Première", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", objectives: "1) Première Objectif 2) Deuxième Objectif 3) Troisième Objectif", skills:"SKILL 1 SKILL 2 SKILL 3", description: "Cours sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "16:00", date: "2018-12-11",channel_id: "1ux79Xb9YLI")


lesson_anna = Lesson.create!(teacher: anna, name: "les Misérables (en code)", topic: "Français", subtopic: "Roman", min_num_of_participants: 3, max_num_of_participants: 10, price: 20, current_price: 20, price_per_user: 20, grade: "première", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", objectives: "1) Première Objectif 2) Deuxième Objectif 3) Troisième Objectif", skills:"SKILL 1 SKILL 2 SKILL 3", description: "Cours sur les Misérables avec Anna Hercot, professeur agrégée, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus.", duration: 45, starts_at: "18:00", date: "2018-12-08")

lesson_germain = Lesson.create!(teacher: nico, name: "Néo et la Matrice", topic: "Mathématiques", subtopic: "Matrices", min_num_of_participants: 4, max_num_of_participants: 6, price: 25, current_price: 25, price_per_user: 25, grade: "Terminale", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", objectives: "1) Première Objectif 2) Deuxième Objectif 3) Troisième Objectif", skills:"SKILL 1 SKILL 2 SKILL 3", description: "Cours sur les identités trigonométriques avec Germain. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "14:00", date: "2018-12-10")

lesson_damien = Lesson.create!(teacher: helo, name: "Le judaïsme pour les nuls", topic: "Philosophie", subtopic: "La religion", min_num_of_participants: 3, max_num_of_participants: 10, price: 30, current_price: 30, price_per_user: 30, grade: "Première", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", objectives: "1) Première Objectif 2) Deuxième Objectif 3) Troisième Objectif", skills:"SKILL 1 SKILL 2 SKILL 3", description: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus et dolores incidunt totam.", duration: 60, starts_at: "10:00", date: "2018-12-9")

lesson_pierre = Lesson.create!(teacher: lily, name: "De l'écriture de leçon", topic: "Français", subtopic: "Orthographe", min_num_of_participants: 3, max_num_of_participants: 10, price: 30, current_price: 30, price_per_user: 30, grade: "Terminale", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", objectives: "1) Première Objectif 2) Deuxième Objectif 3) Troisième Objectif", skills:"SKILL 1 SKILL 2 SKILL 3", description: "Cours de Pierre! Sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "19:00", date: "2018-12-07")

lesson_david = Lesson.create!(teacher: anna, name: "Les médicaments anti-vomissements", topic: "SVT", subtopic: "Biologie", min_num_of_participants: 3, max_num_of_participants: 10, price: 30, current_price: 30, price_per_user: 30 , grade: "première", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", objectives: "1) Première Objectif 2) Deuxième Objectif 3) Troisième Objectif", skills:"SKILL 1 SKILL 2 SKILL 3", description: "Cours sur les Misérables avec David, professeur agrégé, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi, mollitia aliquid magni sint harum sapiente laborum odio nobis saepe sit.", duration: 45, starts_at: "19:30", date: "2018-12-07")

lesson_philo = Lesson.create!(teacher: lily, name: "Nietzsche - l'Antéchrist", topic: "Philosophie", subtopic: "Nietzsche", min_num_of_participants: 3, max_num_of_participants: 10, price: 25, current_price: 25, price_per_user: 25, grade: "Terminale", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", objectives: "1) Première Objectif 2) Deuxième Objectif 3) Troisième Objectif", skills:"SKILL 1 SKILL 2 SKILL 3", description: "Cours sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "19:30", date: "2018-12-07")

lesson_svt = Lesson.create!(teacher: lily, name: "Les Mutations Génétiques", topic: "SVT", subtopic: "Génétique", min_num_of_participants: 3, max_num_of_participants: 10, price: 25, current_price: 25, price_per_user: 25, grade: "Terminale", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", objectives: "1) Première Objectif 2) Deuxième Objectif 3) Troisième Objectif", skills:"SKILL 1 SKILL 2 SKILL 3", description: "Cours sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "19:45", date: "2018-12-08")


Lesson.create!(teacher: lily, name: "La trigo et moi", topic: "Mathématiques", subtopic: "Trigonométrie", min_num_of_participants: 4, max_num_of_participants: 6, price: 40, current_price: 40, price_per_user: 40, grade: "Terminale", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", objectives: "1) Première Objectif 2) Deuxième Objectif 3) Troisième Objectif", skills:"SKILL 1 SKILL 2 SKILL 3", description: "Cours sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem. Maxime autem labore ullam temporibus animi necessitatibus et dolores incidunt totam.", duration: 60, starts_at: "17:00", date: "2018-12-09")

Lesson.create!(teacher: nico, name: "La conscience de toi", topic: "Philosophie", subtopic: "La conscience", min_num_of_participants: 3, max_num_of_participants: 10, price: 30, current_price: 30, price_per_user: 30, grade: "Terminale", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", objectives: "1) Première Objectif 2) Deuxième Objectif 3) Troisième Objectif", skills:"SKILL 1 SKILL 2 SKILL 3", description: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus et dolores incidunt totam.", duration: 60, starts_at: "13:00", date: "2018-12-11")

Lesson.create!(teacher: anna, name: "Comment parler correctement", topic: "Français", subtopic: "Bien parlé!", min_num_of_participants: 3, max_num_of_participants: 10, price: 100, current_price: 100, price_per_user: 100, grade: "Première", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", objectives: "1) Première Objectif 2) Deuxième Objectif 3) Troisième Objectif", skills:"SKILL 1 SKILL 2 SKILL 3", description: "Cours sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "16:00", date: "2018-12-11",channel_id: "1ux79Xb9YLI")




Lesson.create!(teacher: helo, name: "Le buddhisme pour les nuls", topic: "Philosophie", subtopic: "La religion", min_num_of_participants: 3, max_num_of_participants: 10, price: 30, current_price: 30, price_per_user: 30, grade: "Première", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", objectives: "1) Première Objectif 2) Deuxième Objectif 3) Troisième Objectif", skills:"SKILL 1 SKILL 2 SKILL 3", description: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus et dolores incidunt totam.", duration: 60, starts_at: "10:00", date: "2018-12-9")

Lesson.create!(teacher: helo, name: "De l'écriture de bienvenue", topic: "Français", subtopic: "Orthographe", min_num_of_participants: 3, max_num_of_participants: 10, price: 30, current_price: 30, price_per_user: 30, grade: "Terminale", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", objectives: "1) Première Objectif 2) Deuxième Objectif 3) Troisième Objectif", skills:"SKILL 1 SKILL 2 SKILL 3", description: "Cours de Pierre! Sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "19:00", date: "2018-12-07")

Lesson.create!(teacher: nico, name: "Pourquoi vomit-on ?", topic: "SVT", subtopic: "Biologie", min_num_of_participants: 3, max_num_of_participants: 10, price: 30, current_price: 30, price_per_user: 30 , grade: "première", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", objectives: "1) Première Objectif 2) Deuxième Objectif 3) Troisième Objectif", skills:"SKILL 1 SKILL 2 SKILL 3", description: "Cours sur les Misérables avec David, professeur agrégé, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi, mollitia aliquid magni sint harum sapiente laborum odio nobis saepe sit.", duration: 45, starts_at: "19:30", date: "2018-12-07")

Lesson.create!(teacher: helo, name: "Nietzsche et les bisounours", topic: "Philosophie", subtopic: "Nietzsche", min_num_of_participants: 3, max_num_of_participants: 10, price: 25, current_price: 25, price_per_user: 25, grade: "Terminale", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", objectives: "1) Première Objectif 2) Deuxième Objectif 3) Troisième Objectif", skills:"SKILL 1 SKILL 2 SKILL 3", description: "Cours sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "19:30", date: "2018-12-07")

Lesson.create!(teacher: anna, name: "La trisomie", topic: "SVT", subtopic: "Génétique", min_num_of_participants: 3, max_num_of_participants: 10, price: 25, current_price: 25, price_per_user: 25, grade: "Terminale", summary: "Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates.", objectives: "1) Première Objectif 2) Deuxième Objectif 3) Troisième Objectif", skills:"SKILL 1 SKILL 2 SKILL 3", description: "Cours sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "19:45", date: "2018-12-07")

Participation.create!(user: anna, lesson: lesson_damien)
Participation.create!(user: anna, lesson: lesson_nico)
Participation.create!(user: nico, lesson: lesson_helo)
Participation.create!(user: nico, lesson: lesson_lily)
Participation.create!(user: helo, lesson: lesson_anna)
Participation.create!(user: helo, lesson: lesson_germain)
Participation.create!(user: anna, lesson: lesson_germain)
Participation.create!(user: lily, lesson: lesson_pierre)


review1_lesson_nico = Review.create!(content: "Prof complètement perché, j'ai pas compris", rating: 1, user: nico)

review2_lesson_nico = Review.create!(content: "du jamais vu ...", rating: 2, user: nico)

review1_lesson_anna = Review.create!(content: "Super prof même si elle était pas en forme cette fois", rating: 4, user: anna )
review2_lesson_anna = Review.create!(content: "Même en gueule de bois elle assure !!", rating: 4, user: anna)

review1_lesson_lily = Review.create!(content: "Le français comme jamais je l'avais envisagé !", rating: 5, user: lily )
review2_lesson_lily = Review.create!(content: "On redécouvre notre propre langue, un régal !", rating: 4, user: lily )

review1_lesson_helo = Review.create!(content: "Clair et concis", rating: 3, user: helo)
review2_lesson_helo = Review.create!(content: "Concis et clair", rating: 3, user: helo )

puts "4 users, 10 lessons, 8 participations and 8 reviews created"


