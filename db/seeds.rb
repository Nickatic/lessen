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

puts "destroying all participations"
Participation.destroy_all
puts "participations destroyed"

lily = User.create!(email: "lily@gmail.com", password: "123456", first_name: "Lily", last_name: "Gasztowtt")
anna = User.create!(email: "anna@gmail.com", password: "123456", first_name: "Anna", last_name: "Hercot")
nico = User.create!(email: "nico@gmail.com", password: "123456", first_name: "Nicolas", last_name: "Descreux")
helo = User.create!(email: "helo@gmail.com", password: "123456", first_name: "Héloise", last_name: "Guillemot")


lesson_lily = Lesson.create(teacher: lily, name: "Identités trigonométriques", topic: "Mathématiques", subtopic: "Trigonométrie", min_num_of_participants: 3, max_num_of_participants: 10, price: 100, grade: "Terminale", description: "Cours sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus et dolores incidunt totam, mollitia aliquid magni sint harum sapiente laborum odio nobis saepe sit, provident obcaecati illum. Facilis praesentium similique ex libero possimus iste, reprehenderit laudantium exercitationem sint voluptate dolorum, beatae eligendi labore numquam cumque! Quisquam expedita, incidunt minima at recusandae dolorem aliquid nobis. Sequi, eligendi autem aspernatur. Consequatur obcaecati laborum eligendi atque nostrum odio magnam eaque assumenda, eveniet, aperiam doloremque rem. A dolores omnis deserunt quia labore eveniet ipsam?", duration: 60, starts_at: "12:00", date: "2018-12-05")
lesson_anna = Lesson.create(teacher: anna, name: "les Misérables (en code)", topic: "Français", subtopic: "Roman", min_num_of_participants: 3, max_num_of_participants: 10, price: 200, grade: "première", description: "Cours sur les Misérables avec Anna Hercot, professeur agrégée, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus et dolores incidunt totam, mollitia aliquid magni sint harum sapiente laborum odio nobis saepe sit, provident obcaecati illum. Facilis praesentium similique ex libero possimus iste, reprehenderit laudantium exercitationem sint voluptate dolorum, beatae eligendi labore numquam cumque! Quisquam expedita, incidunt minima at recusandae dolorem aliquid nobis. Sequi, eligendi autem aspernatur. Consequatur obcaecati laborum eligendi atque nostrum odio magnam eaque assumenda, eveniet, aperiam doloremque rem. A dolores omnis deserunt quia labore eveniet ipsam?", duration: 45, starts_at: "18:00", date: "2018-12-07")

Participation.create(user: anna, lesson: lesson_lily)
Participation.create(user: nico, lesson: lesson_lily)
Participation.create(user: helo, lesson: lesson_anna)

puts "4 users and one lesson created"


