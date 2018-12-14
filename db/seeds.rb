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

#anna

lesson_anna_inscription = Lesson.create!(teacher: anna, name: "Le cercle trigonométrique - niveau débutant", topic: "Mathématiques", subtopic: "Trigonométrie", min_num_of_participants: 4, max_num_of_participants: 6, price: 40, current_price: 40, price_per_user: 40, grade: "Terminale", summary: "Compréhension détaillée du cercle trigonométrique avec théorie sur les radians et l'angle orienté de deux vecteurs.", description: "Le but de ce cours est de revenir sur la définition du cercle trigonométrique, qui correspond à: sur un cercle, on appelle sens direct, sens positif ou sens trigonométrique le sens contraire des aiguilles d’une montre. Nous travaillerons sur la définition d'un radian ainsi que sur la correspondance entre les radians et les degrés. Les fonctions sinus et cosinus ont été introduites dans les formules trigonométriques qui nous permettent de calculer des longueurs ou des angles dans un triangle rectangle. Nous reverrons ces fonctions plus en détail à partir de cette notion de cercle trigonométrique.", duration: 60, starts_at: "17:00", date: "2018-12-16")
lesson_anna_inscription.skill_list.add("raisonnement", "construire une démonstration")
lesson_anna_inscription.objective_list.add("Découverte des relations trigonométriques  dans le premier cadran du cercle", "Valeurs caractéristiques du  cercle trigonométrique", "Désignations des axes de coordonnées")
lesson_anna_inscription.save!

lesson_anna_replay= Lesson.create!(teacher: anna, name: "Limites de suites", topic: "Mathématiques", subtopic: "Suites", min_num_of_participants: 3, max_num_of_participants: 10, price: 40, current_price: 40, price_per_user: 40, grade: "Terminale", summary: "Calculs de limites de suites lorsque n tend vers l'infini.", description: "Dans ce cours, nous déterminerons ensemble la limite d'une suite lorsque n tend vers l'infini, puis je vous proposerai un exercice d'approfondissement. ", duration: 13, starts_at: "13:00", date: "2018-12-11")
lesson_anna_replay.skill_list.add("logique", "raisonnement", "calcul")
lesson_anna_replay.objective_list.add("Résolution graphique", "Limites usuelles")
lesson_anna_replay.save!

lesson_anna_live = Lesson.create!(teacher: anna, name: "Variables aléatoires", topic: "Mathématiques", subtopic: "Probabilités", min_num_of_participants: 3, max_num_of_participants: 10, price: 40, current_price: 40, price_per_user: 40, grade: "Terminale", summary: "Déterminer une loi de probabilité d'une variable aléatoire et comprendre comment construire un tableau de probabilités.", description: "Cours sur les variables aléatoires avec l'étude d'un scénario précis. Nous allons voir ensembles comment résumer les informations dans un tableau et quelles valeurs assigner à la variable X dépendant du scénario. Si nous avons le temps, nous verrons la fonction de répartition, l'espérance, la variance et l'écart type. ", duration: 60, starts_at: "19:00", date: "2018-12-14",channel_id: "1ux79Xb9YLI")
lesson_anna_live.skill_list.add("logique", "raisonnement", "extraction d'information")
lesson_anna_live.objective_list.add(" Lister l’ensemble des valeurs xi prises par  X", "Construire le tableau de probabilité")
lesson_anna_live.save!

lesson_anna_5 = Lesson.create!(teacher: anna, name: "Droites et plans de l'espace", topic: "Mathématiques", subtopic: " Géométrie", min_num_of_participants: 3, max_num_of_participants: 10, price: 40, current_price: 40, price_per_user: 40, grade: "Terminale", summary: "Deux droites de l'espace sont soit coplanaires (dans un même plan) soit non coplanaires.", description: "Cours sur les variables aléatoires avec l'étude d'un scénario précis. Nous allons voir ensembles comment résumer les informations dans un tableau et quelles valeurs assigner à la variable X dépendant du scénario.", duration: 60, starts_at: "19:00", date: "2018-12-14",channel_id: "1ux79Xb9YLI")
lesson_anna_5.skill_list.add("logique", "raisonnement", "extraction d'information")
lesson_anna_5.objective_list.add(" Lister l’ensemble des valeurs xi prises par  X", "Construire le tableau de probabilité")
lesson_anna_5.save!

lesson_anna_6 = Lesson.create!(teacher: anna, name: "Nombres complexes", topic: "Mathématiques", subtopic: " Géométrie", min_num_of_participants: 3, max_num_of_participants: 10, price: 40, current_price: 40, price_per_user: 40, grade: "Terminale", summary: "Il existe un ensemble de nombres appelé ensemble des nombres complexes qui possède des propriétés que nous allons voir dans ce cours.", description: "Cours sur les variables aléatoires avec l'étude d'un scénario précis. Nous allons voir ensembles comment résumer les informations dans un tableau et quelles valeurs assigner à la variable X dépendant du scénario.", duration: 60, starts_at: "19:00", date: "2018-12-14",channel_id: "1ux79Xb9YLI")
lesson_anna_6.skill_list.add("logique", "raisonnement", "extraction d'information")
lesson_anna_6.objective_list.add(" Lister l’ensemble des valeurs xi prises par  X", "Construire le tableau de probabilité")
lesson_anna_6.save!

lesson_anna_9 = Lesson.create!(teacher: anna, name: "Produit scalaire dans l'espace", topic: "Mathématiques", subtopic: " Géométrie", min_num_of_participants: 3, max_num_of_participants: 10, price: 40, current_price: 40, price_per_user: 40, grade: "Terminale", summary: "Produits scalaires de deux vecteurs et la conservation de propriétés dans l'espace.", description: "Cours sur les variables aléatoires avec l'étude d'un scénario précis. Nous allons voir ensembles comment résumer les informations dans un tableau et quelles valeurs assigner à la variable X dépendant du scénario.", duration: 60, starts_at: "19:00", date: "2018-12-14",channel_id: "1ux79Xb9YLI")
lesson_anna_9.skill_list.add("logique", "raisonnement", "extraction d'information")
lesson_anna_9.objective_list.add(" Lister l’ensemble des valeurs xi prises par  X", "Construire le tableau de probabilité")
lesson_anna_9.save!

#Trigonométrie


lesson_germain_5 = Lesson.create!(teacher: germain, name: "La notion de cercle en trigonométrie", topic: "Mathématiques", subtopic: "Trigonométrie", min_num_of_participants: 4, max_num_of_participants: 6, price: 40, current_price: 40, price_per_user: 40, grade: "Terminale", summary: "Nous reverrons la notion principale du cercle trigonométriques et ses axes.", description: "Le but de ce cours est de revenir sur la définition du cercle trigonométrique, qui correspond à: sur un cercle, on appelle sens direct, sens positif ou sens trigonométrique le sens contraire des aiguilles d’une montre. Nous travaillerons sur la définition d'un radian ainsi que sur la correspondance entre les radians et les degrés. Les fonctions sinus et cosinus ont été introduites dans les formules trigonométriques qui nous permettent de calculer des longueurs ou des angles dans un triangle rectangle. Nous reverrons ces fonctions plus en détail à partir de cette notion de cercle trigonométrique.", duration: 60, starts_at: "17:00", date: "2018-12-16")
lesson_germain_5.skill_list.add("raisonnement", "construire une démonstration")
lesson_germain_5.objective_list.add("Découverte des relations trigonométriques  dans le premier cadran du cercle", "Valeurs caractéristiques du  cercle trigonométrique", "Désignations des axes de coordonnées")
lesson_germain_5.save!

lesson_anna_7 = Lesson.create!(teacher: anna, name: "Le cercle trigonométrique - niveau intermédiaire", topic: "Mathématiques", subtopic: "Trigonométrie", min_num_of_participants: 4, max_num_of_participants: 6, price: 40, current_price: 40, price_per_user: 40, grade: "Terminale", summary: "Compréhension détaillée du cercle trigonométrique avec théorie sur les radians et l'angle orienté de deux vecteurs.", description: "Le but de ce cours est de revenir sur la définition du cercle trigonométrique, qui correspond à: sur un cercle, on appelle sens direct, sens positif ou sens trigonométrique le sens contraire des aiguilles d’une montre. Nous travaillerons sur la définition d'un radian ainsi que sur la correspondance entre les radians et les degrés. Les fonctions sinus et cosinus ont été introduites dans les formules trigonométriques qui nous permettent de calculer des longueurs ou des angles dans un triangle rectangle. Nous reverrons ces fonctions plus en détail à partir de cette notion de cercle trigonométrique.", duration: 60, starts_at: "17:00", date: "2018-12-16")
lesson_anna_7.skill_list.add("raisonnement", "construire une démonstration")
lesson_anna_7.objective_list.add("Découverte des relations trigonométriques  dans le premier cadran du cercle", "Valeurs caractéristiques du  cercle trigonométrique", "Désignations des axes de coordonnées")
lesson_anna_7.save!

lesson_anna_8 = Lesson.create!(teacher: anna, name: "Le cercle trigonométrique - niveau avancé", topic: "Mathématiques", subtopic: "Trigonométrie", min_num_of_participants: 4, max_num_of_participants: 6, price: 40, current_price: 40, price_per_user: 40, grade: "Terminale", summary: "Compréhension détaillée du cercle trigonométrique avec théorie sur les radians et l'angle orienté de deux vecteurs.", description: "Le but de ce cours est de revenir sur la définition du cercle trigonométrique, qui correspond à: sur un cercle, on appelle sens direct, sens positif ou sens trigonométrique le sens contraire des aiguilles d’une montre. Nous travaillerons sur la définition d'un radian ainsi que sur la correspondance entre les radians et les degrés. Les fonctions sinus et cosinus ont été introduites dans les formules trigonométriques qui nous permettent de calculer des longueurs ou des angles dans un triangle rectangle. Nous reverrons ces fonctions plus en détail à partir de cette notion de cercle trigonométrique.", duration: 60, starts_at: "17:00", date: "2018-12-16")
lesson_anna_8.skill_list.add("raisonnement", "construire une démonstration")
lesson_anna_8.objective_list.add("Découverte des relations trigonométriques  dans le premier cadran du cercle", "Valeurs caractéristiques du  cercle trigonométrique", "Désignations des axes de coordonnées")
lesson_anna_8.save!


lesson_anna_1 = Lesson.create!(teacher: anna, name: "Triangle rectangle", topic: "Mathématiques", subtopic: "Trigonométrie", min_num_of_participants: 4, max_num_of_participants: 6, price: 50, current_price: 50, price_per_user: 50, grade: "Terminale", summary: "Dans un triangle rectangle, on définit trois côtés : l'hypoténuse, le côté adjacent, le côté opposé à l’angle étudié.", description: "Attention, seule l'hypoténuse est toujours la même quel que soit l’angle étudié. Le côté opposé à l’angle {ABC} ABC est [AC][AC], mais le côté opposé à l’angle {ACB} ACB est [AB][AB].", duration: 60, starts_at: "12:00", date: "2018-12-11")
lesson_anna_1.skill_list.add("Modéliser", "Représenter", "Raisonner")
lesson_anna_1.objective_list.add("Traduire en langage mathématique une situation réelle", "Simplifier ou particulariser une situation", "Reformuler un problème")
lesson_anna_1.save!

lesson_anna_2 = Lesson.create!(teacher: anna, name: "Calcul de longueurs et d'angles", topic: "Mathématiques", subtopic: "Trigonométrie", min_num_of_participants: 4, max_num_of_participants: 6, price: 40, current_price: 40, price_per_user: 40, grade: "Terminale", summary: "Dans un triangle rectangle, on définit trois côtés : l'hypoténuse, le côté adjacent, le côté opposé à l’angle étudié.", description: "Attention, seule l'hypoténuse est toujours la même quel que soit l’angle étudié. Le côté opposé à l’angle {ABC} ABC est [AC][AC], mais le côté opposé à l’angle {ACB} ACB est [AB][AB].", duration: 60, starts_at: "19:00", date: "2018-12-17")
lesson_anna_2.skill_list.add("Analyser un problème", "Conduire une démonstration", "Analyse et synthèse")
lesson_anna_2.objective_list.add("Critiquer une démarche", "Représenter un objet mathématique", "Opérer la conversion")
lesson_anna_2.save!

lesson_germain_1 = Lesson.create!(teacher: germain, name: "Le raisonnement par récurrence", topic: "Mathématiques", subtopic: "Suites", min_num_of_participants: 4, max_num_of_participants: 6, price: 30, current_price: 30, price_per_user: 30, grade: "Terminale", summary: "P(n) désigne une certaine propriété dépendant d’un entier n et n0 désigne un entier naturel donné. On veut démontrer que pour tout entier naturel n ⩾ n0, la propriété P(n) est vraie.", description: "Suites et limites de fonction", duration: 60, starts_at: "17:00", date: "2018-12-17")
lesson_germain_1.skill_list.add("Représenter un objet mathématique", "Reformuler un problème", "Analyser un problème.")
lesson_germain_1.objective_list.add("Mettre en œuvre des algorithmes simples", "Simplifier ou particulariser une situation", "Développer une argumentation mathématique")
lesson_germain_1.save!


lesson_germain_2 = Lesson.create!(teacher: germain, name: "Généralités sur les fonctions", topic: "Mathématiques", subtopic: "Fonctions", min_num_of_participants: 3, max_num_of_participants: 10, price: 20, current_price: 20, price_per_user: 20, grade: "Première", summary: "Sens de variation d’une fonction, extrema, vérification de fonction paires et impaires",description: "Dans un tableau de signes relatif à un quotient, on précise les racines du dénominateur par une double barre.", duration: 13, starts_at: "13:00", date: "2018-12-11")
lesson_germain_2.skill_list.add("Critiquer une démarche", "Méthode de combinaison", "Représenter un objet mathématique")
lesson_germain_2.objective_list.add("Méthode", "Opérer la conversion", "Factorisation et développement")
lesson_germain_2.save!

lesson_germain_3 = Lesson.create!(teacher: germain, name: "Continuité", topic: "Mathématiques", subtopic: "Fonctions", min_num_of_participants: 3, max_num_of_participants: 10, price: 60, current_price: 60, price_per_user: 60, grade: "Première", summary: "Exemples de fonctions continues, théorème des valeurs intermédiaires et fonctions continues et strictement monotones sur un intervalle.",description: "Exemples de fonctions continues, théorème des valeurs intermédiaires et fonctions continues et strictement monotones sur un intervalle", duration: 13, starts_at: "17:00", date: "2018-12-20")
lesson_germain_3.skill_list.add("Analyse et synthèse", "Conduire une démonstration", "Méthode de combinaison")
lesson_germain_3.objective_list.add("Méthode de substituion", "Méthode de combinaison", "Factorisation et développement")
lesson_germain_3.save!

lesson_germain_4 = Lesson.create!(teacher: germain, name: "Intégrales", topic: "Mathématiques", subtopic: "Fonctions", min_num_of_participants: 3, max_num_of_participants: 10, price: 20, current_price: 20, price_per_user: 20, grade: "Première", summary: "Résolution graphique d’une équation. Définition de l’intégrale et calcul de la valeur moyenne d’une fonction sur un intervalle.",description: "Nous utilisons la règle des signes pour trouver le signe d’un produit ou d’un quotient :", duration: 13, starts_at: "13:00", date: "2018-12-21")
lesson_germain_4.skill_list.add("Logique", "Analyser un problème", "Organiser les différentes étapes d’un calcul complexe")
lesson_germain_4.objective_list.add("Factorisation et développement", "Reformuler un problème", "Raisonnement")
lesson_germain_4.save!

#Probabilités

lesson_germain = Lesson.create!(teacher: germain, name: "Univers et probabilités", topic: "Mathématiques", subtopic: "Probabilités", min_num_of_participants: 3, max_num_of_participants: 10, price: 100, current_price: 100, price_per_user: 100, grade: "Première", summary: "Soit OmegaΩ l’ensemble des éventualités (résultats) possibles d’une expérience aléatoire. On appelle OmegaΩ l’univers de l’expérience.", description: "On appelle évènement toute sous partie de OmegaΩ.", duration: 60, starts_at: "07:00", date: "2018-12-12")
lesson_germain.skill_list.add("Critiquer une démarche", "Méthode de combinaison", "Représenter un objet mathématique")
lesson_germain.objective_list.add("Méthode", "Opérer la conversion", "Factorisation et développement")

lesson_germain.save!

lesson_germain_5 = Lesson.create!(teacher: germain, name: "Loi Binomiale", topic: "Mathématiques", subtopic: "Probabilités", min_num_of_participants: 3, max_num_of_participants: 10, price: 60, current_price: 60, price_per_user: 60, grade: "Première", summary: "Une éventualité est un résultat possible de l’expérience.", description: "Ω est une partie de OmegaΩ, c’est l’évènement certain.", duration: 60, starts_at: "14:00", date: "2018-12-17")
lesson_germain_5.skill_list.add("Analyse et synthèse", "Conduire une démonstration", "Méthode de combinaison")
lesson_germain_5.objective_list.add("Méthode de substituion", "Méthode de combinaison", "Factorisation et développement")
lesson_germain_5.save!

lesson_anna_3 = Lesson.create!(teacher: anna, name: "Echantillonnages", topic: "Mathématiques", subtopic: "Probabilités", min_num_of_participants: 3, max_num_of_participants: 10, price: 30, current_price: 30, price_per_user: 30, grade: "Première", summary: "Considérons une urne contenant deux boules : une noire et une blanche. ", description: "On tire au hasard une boule et on note sa couleur, N pour noire et B pour blanc.", duration: 60, starts_at: "17:00", date: "2018-12-21")
lesson_anna_3.skill_list.add("Logique", "Analyser un problème", "Organiser les différentes étapes d’un calcul complexe")
lesson_anna_3.objective_list.add("Factorisation et développement", "Reformuler un problème", "Raisonnement")
lesson_anna_3.save!

#maths

lesson_anna_4 = Lesson.create!(teacher: anna, name: "La loi de Bernouilli", topic: "Mathématiques", subtopic: "Probabilités", min_num_of_participants: 3, max_num_of_participants: 10, price: 25, current_price: 25, price_per_user: 25, grade: "Terminale", summary: "Une épreuve de Bernoulli est une épreuve à deux éventualités (succès et échec, pile et face, blanc et pas blanc,obtenir le 1 ou pas quand on jette un dé...) dont les probabilités respectives sont notées p et 1 − p (p étant un réel élément de [0, 1]).", description: "On considère un dé équilibré. Sa loi de probabilité se résume dans le tableau suivant.", duration: 60, starts_at: "19:30", date: "2018-12-23")
lesson_anna_4.skill_list.add("Modéliser", "Représenter", "Raisonner")
lesson_anna_4.objective_list.add("Factorisation et développement", "Reformuler un problème", "Raisonnement")
lesson_anna_4.save!

#francais

lesson_edward = Lesson.create!(teacher: edward, name: "Le texte théâtral et sa représentation du XVIIe à nos jours", topic: "Français", subtopic: "Théâtre", min_num_of_participants: 3, max_num_of_participants: 10, price: 40, current_price: 40, price_per_user: 40, grade: "Première", summary: "Selon Aristote, le théâtre occidental est apparu au VIe siècle avant J.-C.", description: "La forme d’origine s’appelle « les dithyrambes », sorte d’éloges dansés et chantés par un chœur à la gloire de Dionysos (dieu des arts, de la fête et du vin)", duration: 60, starts_at: "16:00", date: "2018-12-11")
lesson_edward.skill_list.add("Caractéristiques", "Transition", "Drame romantique")
lesson_edward.objective_list.add("La première tragédie", "L’origine du théâtre", "Les tragédies antiques")
lesson_edward.save!

lesson_edward_1 = Lesson.create!(teacher: edward, name: "Le personnage de roman du XVIIe siècle à nos jours", topic: "Français", subtopic: "Théâtre", min_num_of_participants: 3, max_num_of_participants: 10, price: 100, current_price: 100, price_per_user: 100, grade: "Première", summary: "Selon Lily, le théâtre occidental est apparu au VIe siècle avant J.-C.", description: "Les premières représentations théâtrales puis, des lieux spécifiques émergent, les places étaient attribuées en fonction de la classe sociale : les premiers rangs étaient réservés aux citoyens importants", duration: 60, starts_at: "16:00", date: "2018-12-11")
lesson_edward_1.skill_list.add("Caractéristiques", "Transition", "Drame romantique")
lesson_edward_1.objective_list.add("Un acte civique", "L’origine du théâtre", "Les tragédies antiques")
lesson_edward_1.save!

lesson_edward_2 = Lesson.create!(teacher: edward, name: "L'écriture poétique en quête du sens, du Moyen-Âge à nos jours", topic: "Français", subtopic: "Théâtre", min_num_of_participants: 3, max_num_of_participants: 10, price: 100, current_price: 100, price_per_user: 100, grade: "Première", summary: "Selon Lily, le théâtre occidental est apparu au VIe siècle avant J.-C.", description: "Les premières représentations théâtrales grecques : près des temples, sur l’Agora ou sur la place publique", duration: 60, starts_at: "11:00", date: "2018-12-16")
lesson_edward_2.skill_list.add("Caractéristiques", "Transition", "Drame romantique")
lesson_edward_2.objective_list.add("La première tragédie", "L’origine du théâtre", "Les tragédies antiques")
lesson_edward_2.save!

lesson_edward_3 = Lesson.create!(teacher: edward, name: "La princesse de Clèves", topic: "Français", subtopic: "Roman", min_num_of_participants: 4, max_num_of_participants: 6, price: 25, current_price: 25, price_per_user: 25, grade: "Terminale", summary: "Les places étaient attribuées en fonction de la classe sociale : les premiers rangs étaient réservés aux citoyens importants", description: "Les places étaient attribuées en fonction de la classe sociale : les premiers rangs étaient réservés aux citoyens importants", duration: 60, starts_at: "14:00", date: "2018-12-11")
lesson_edward_3.skill_list.add("Caractéristiques", "Transition", "Drame romantique")
lesson_edward_3.objective_list.add("La première tragédie", "L’origine du théâtre", "Les tragédies antiques")
lesson_edward_3.save!

lesson_edward_4 = Lesson.create!(teacher: edward, name: "Le Romantisme", topic: "Français", subtopic: "Mouvements littéraires", min_num_of_participants: 3, max_num_of_participants: 10, price: 30, current_price: 30, price_per_user: 30, grade: "Première", summary: "La Pléiade est un groupe de 7 poètes français de la Renaissance (XVIème siècle). Ces poètes veulent renouveler la langue française, et refuse d'autres idiomes alors plus nobles comme le latin.La Pléiade se caractérise également par son admiration de la littérature antique.", description: "Les places étaient attribuées en fonction de la classe sociale : les premiers rangs étaient réservés aux citoyens importants", duration: 60, starts_at: "10:00", date: "2018-12-16")
lesson_edward_4.skill_list.add("Caractéristiques", "Transition", "Drame romantique")
lesson_edward_4.objective_list.add("La première tragédie", "L’origine du théâtre", "Les tragédies antiques")
lesson_edward_4.save!

#SVT

lesson_damien_1 = Lesson.create!(teacher: damien, name: "Un regard sur l'évolution de l'homme", topic: "SVT", subtopic: "Biologie", min_num_of_participants: 3, max_num_of_participants: 10, price: 30, current_price: 30, price_per_user: 30, grade: "Terminale", summary: "Une espèce est un groupe d’individus interféconds présentant des caractères communs (phénotype). Au cours de l’histoire des sciences la définition de ce terme a subi bien des controverses.", description: "Cours de Pierre! Sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "19:00", date: "2018-12-11")
lesson_damien_1.skill_list.add("Pollution", "Air", "Daft")
lesson_damien_1.objective_list.add("Surfaces au sol", "Quantités d’eau", "Quantités d’air")
lesson_damien_1.save!

lesson_damien_2 = Lesson.create!(teacher: damien, name: "Le brassage intrachromosomique", topic: "SVT", subtopic: "Génétique", min_num_of_participants: 3, max_num_of_participants: 10, price: 25, current_price: 25, price_per_user: 25, grade: "Terminale", summary: "En prophase de la première division de méiose, les chromosomes homologues appariés échangent des portions de chromatides en réalisant des chiasmas : on obtient des chromosomes recombinés.", description: "Elevé dans le cadre d’une culture (destinée à produire de la biomasse végétale) Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "19:30", date: "2018-12-16")
lesson_damien_2.skill_list.add("Pollution", "Air", "Daft")
lesson_damien_2.objective_list.add("Surfaces au sol", "Quantités d’eau", "Quantités d’air")
lesson_damien_2.save!

lesson_damien = Lesson.create!(teacher: damien, name: "La réaction inflammatoire aiguë", topic: "SVT", subtopic: "Génétique", min_num_of_participants: 3, max_num_of_participants: 10, price: 40, current_price: 40, price_per_user: 40, grade: "Terminale", summary: "Lors d’une blessure ou une simple égratignure, on observe l’apparition d’une rougeur (érythème) autour de la plaie et un gonflement localisé (œdème). La plaie s’échauffe et est douloureuse.", description: "Elevé dans le cadre d’une culture (destinée à produire de la biomasse végétale) Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "09:45", date: "2018-12-21")
lesson_damien.skill_list.add("Pollution", "Air", "Daft")
lesson_damien.objective_list.add("Surfaces au sol", "Quantités d’eau", "Quantités d’air")
lesson_damien.save!

lesson_damien_3 = Lesson.create!(teacher: damien, name: "Le réflexe myotatique", topic: "SVT", subtopic: "Corps humain", min_num_of_participants: 3, max_num_of_participants: 10, price: 30, current_price: 30, price_per_user: 30, grade: "Terminale", summary: "Le réflexe myotatique déclenche une contraction d’un muscle en réponse à son propre étirement. Il permet le maintien des postures dans l’espace en assurant une contraction légère des muscles, il s’agit du tonus musculaire.", description: "Elevé dans le cadre d’une culture (destinée à produire de la biomasse végétale) Maxime autem labore ullam temporibus animi necessitatibus et dolores incidunt totam.", duration: 60, starts_at: "13:00", date: "2018-12-11")
lesson_damien_3.skill_list.add("Pollution", "Air", "Daft")
lesson_damien_3.objective_list.add("Surfaces au sol", "Quantités d’eau", "Quantités d’air")
lesson_damien_3.save!

lesson_damien_4 = Lesson.create!(teacher: damien, name: "Les outils de la photosynthèse", topic: "SVT", subtopic: "Spé SVT", min_num_of_participants: 3, max_num_of_participants: 10, price: 26, current_price: 25, price_per_user: 25, grade: "Première", summary: "Les végétaux sont capables de convertir l'énergie lumineuse en énergie chimique qu'ils emmagasinent dans des molécules organiques : c'est la photosynthèse. Quels sont les outils nécessaires à ce processus ?", description: "Cours sur les identités trigonométriques, Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur magnam, perspiciatis voluptatum asperiores autem aperiam expedita ipsam obcaecati, ipsa repellendus, maxime, voluptates. Maxime autem labore ullam temporibus animi necessitatibus.", duration: 60, starts_at: "15:00", date: "2018-12-11")
lesson_damien_4.skill_list.add("Pollution", "Air", "Daft")
lesson_damien_4.objective_list.add("Surfaces au sol", "Quantités d’eau", "Quantités d’air")
lesson_damien_4.save!

lesson_helo_1 = Lesson.create!(teacher: helo, name: "Gradient et flux géothermiques", topic: "SVT", subtopic: "Enjeux Planétaires", min_num_of_participants: 3, max_num_of_participants: 10, price: 25, current_price: 25, price_per_user: 25, grade: "Première", summary: "La Terre présente une température moyenne de 15 °C, en partie due à l'énergie solaire reçue et absorbée par la globe terrestre. Cependant on dénote également un flux thermique dont l'origine est interne ?", description: "Chômage modéré sur la période, sauf dans les périodes de crise", duration: 60, starts_at: "13:30", date: "2018-12-11")
lesson_helo_1.skill_list.add("Pollution", "Air", "Daft")
lesson_helo_1.objective_list.add("Surfaces au sol", "Quantités d’eau", "Quantités d’air")
lesson_helo_1.save!

lesson_helo_2 = Lesson.create!(teacher: helo, name: "Mécanismes de transfert thermique", topic: "SVT", subtopic: "Enjeux Planétaires", min_num_of_participants: 3, max_num_of_participants: 10, price: 25, current_price: 25, price_per_user: 25, grade: "Première", summary: "La conduction est un mode de transfert d’énergie thermique qui ne nécessite pas de mouvements de matière. La chaleur est transférée de proche en proche par simple agitation des atomes.", description: "La conduction est un mode de transfert d’énergie thermique qui ne nécessite pas de mouvements de matière. La chaleur est transférée de proche en proche par simple agitation des atomes. Plus la différence de température entre deux matériaux est importante, plus ce transfert sera efficace. Par contre, il dépend aussi de la conductivité thermique des matériaux.",duration: 60, starts_at: "13:30", date: "2018-12-22")
lesson_helo_2.skill_list.add("Pollution", "Air", "Daft")
lesson_helo_2.objective_list.add("Surfaces au sol", "Quantités d’eau", "Quantités d’air")
lesson_helo_2.save!


lesson_helo_3 = Lesson.create!(teacher: helo, name: "Pression de sélection par l'Homme", topic: "SVT", subtopic: "Enjeux Planétaires", min_num_of_participants: 3, max_num_of_participants: 10, price: 25, current_price: 25, price_per_user: 25, grade: "Première", summary: "Les végétaux jouent un rôle essentiel pour la survie de l’espèce humaine. Ils sont à la base de l’alimentation animale qui sert à nourrir l’Homme. Au cours des siècles, depuis les débuts de l’agriculture il y a 11 500 ans, l’Homme a toujours cherché à améliorer les espèces végétales qu’il cultive.", description: "Chômage modéré sur la période, sauf dans les périodes de crise", duration: 60, starts_at: "13:30", date: "2018-12-10")
lesson_helo_3.skill_list.add("Pollution", "Air", "Daft")
lesson_helo_3.objective_list.add("Surfaces au sol", "Quantités d’eau", "Quantités d’air")
lesson_helo_3.save!

lesson_helo_4 = Lesson.create!(teacher: helo, name: "La disparition des reliefs", topic: "SVT", subtopic: "Altération des reliefs", min_num_of_participants: 3, max_num_of_participants: 10, price: 25, current_price: 25, price_per_user: 25, grade: "Terminale", summary: "Nous aborderons l’altération et l’érosion des reliefs. Dans la troisième partie, nous analyserons les processus tectoniques participant à la disparition des reliefs. Nous expliquerons enfin le recyclage de la lithosphère continentale.", description: "Chômage modéré sur la période, sauf dans les périodes de crise", description: "Dès sa mise en place, tout relief est soumis par l'eau sous forme liquide (ruissellement) ou solide (glaciers) à des phénomènes d'altération et d'érosion ce qui a pour conséquence sa désintégration inexorable. Le glissement lent des glaciers rabote le substrat rocheux et les débris minéraux obtenus sont plus facilement hydrolysés. On estime à quelques dixièmes de millimètre par an la vitesse d'érosion d'un relief montagneux.", duration: 60, starts_at: "20:30", date: "2018-12-26")
lesson_helo_4.skill_list.add("Pollution", "Air", "Daft")
lesson_helo_4.objective_list.add("Surfaces au sol", "Quantités d’eau", "Quantités d’air")
lesson_helo_4.save!
#Philo

lesson_charles = Lesson.create!(teacher: charles, name: "Le travail", topic: "Philosophie", subtopic: "La culture", min_num_of_participants: 3, max_num_of_participants: 10, price: 30, current_price: 30, price_per_user: 30, grade: "Terminale", summary: "«Tu travailleras à la sueur de ton front», dans cet extrait de la Genèse, le travail prend la forme d'une ultime punition de Dieu faite à l'homme.", description: "Chômage modéré sur la période, sauf dans les périodes de crise", duration: 60, starts_at: "19:00", date: "2018-12-11")
lesson_charles.skill_list.add("Méditer", "Prier", "Dormir")
lesson_charles.objective_list.add("Comprendre", "Apprendre", "Travailler")
lesson_charles.save!


lesson_charles_1 = Lesson.create!(teacher: charles, name: "Le langage", topic: "Philosophie", subtopic: "La culture", min_num_of_participants: 3, max_num_of_participants: 10, price: 25, current_price: 25, price_per_user: 25, grade: "Terminale", summary: "Sans les langages parlés et écrits, la communication serait amoindrie, voire impossible. Nous disposons, dans les cas d' « empêchements forcés » (tels que la distance, un handicap comme le mutisme, etc.).", description: "Chômage modéré sur la période, sauf dans les périodes de crise", duration: 60, starts_at: "19:30", date: "2018-12-22")
lesson_charles_1.skill_list.add("Méditer", "Prier", "Dormir")
lesson_charles_1.objective_list.add("Comprendre", "Apprendre", "Travailler")
lesson_charles_1.save!

lesson_charles_2 = Lesson.create!(teacher: charles, name: "La conscience", topic: "Philosophie", subtopic: "Le sujet", min_num_of_participants: 3, max_num_of_participants: 10, price: 20, current_price: 20, price_per_user: 20, grade: "Terminale", summary: "Étymologiquement, le terme de conscience - l'un des termes majeurs de la philosophie occidentale - provient du latin cum scientia, qui signifie  « accompagné de savoir ». Mais il possède plusieurs significations, qu'il faut savoir distinguer.", description: "Inconnues connues", duration: 13, starts_at: "13:00", date: "2018-12-13")
lesson_charles_2.skill_list.add("Méditer", "Prier", "Dormir")
lesson_charles_2.objective_list.add("Comprendre", "Apprendre", "Travailler")
lesson_charles_2.save!

lesson_charles_3 = Lesson.create!(teacher: charles, name: "Imaginer, est-ce nier la réalité ?", topic: "Philosophie", subtopic: "Le sujet", min_num_of_participants: 3, max_num_of_participants: 10, price: 10, current_price: 10, price_per_user: 10, grade: "Terminale", summary: "L’imagination est la faculté de former et de combiner des images. Si j’imagine, je mets à distance la réalité, je m’en détache. Mais ce détachement, cette mise à distance du réel impliquent-ils une véritable négation du réel ?", description: "Inconnues connues", duration: 13, starts_at: "09:00", date: "2018-12-13")
lesson_charles_3.skill_list.add("Méditer", "Prier", "Dormir")
lesson_charles_3.objective_list.add("Comprendre", "Apprendre", "Travailler")
lesson_charles_3.save!

lesson_charles_4 = Lesson.create!(teacher: charles, name: "La perception est-elle le fondement de la connaissance ?", topic: "Philosophie", subtopic: "Le sujet", min_num_of_participants: 3, max_num_of_participants: 10, price: 5, current_price: 5, price_per_user: 5, grade: "Première", summary: "La perception constitue la modalité originaire de notre rapport au monde en ceci qu’elle relie le vivant à son environnement, lui permettant ainsi de pouvoir s’y mouvoir.", description: "Inconnues connues", duration: 13, starts_at: "18:00", date: "2018-12-21")
lesson_charles_4.skill_list.add("Méditer", "Prier", "Dormir")
lesson_charles_4.objective_list.add("Comprendre", "Apprendre", "Travailler")
lesson_charles_4.save!


# COURS PRECEDENTS LILY
Participation.create!(user: lily, lesson: lesson_anna_replay)
lesson_anna_replay.update_price_per_user_up
Participation.create!(user: lily, lesson: lesson_edward_1)
lesson_edward_1.update_price_per_user_up
Participation.create!(user: lily, lesson: lesson_damien_1)
lesson_damien_1.update_price_per_user_up
Participation.create!(user: lily, lesson: lesson_helo_4)
lesson_helo_4.update_price_per_user_up

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

#COURS ANNA
Participation.create!(user: edward, lesson: lesson_anna_replay)
lesson_anna_replay.update_price_per_user_up
Participation.create!(user: nico, lesson: lesson_anna_replay)
lesson_anna_replay.update_price_per_user_up
Participation.create!(user: charles, lesson: lesson_anna_replay)
lesson_anna_replay.update_price_per_user_up
Participation.create!(user: germain, lesson: lesson_anna_replay)
lesson_anna_replay.update_price_per_user_up
Participation.create!(user: lily, lesson: lesson_anna_replay)
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

Participation.create!(user: germain, lesson: lesson_anna_live)
lesson_anna_live.update_price_per_user_up
Participation.create!(user: damien, lesson: lesson_anna_live)
lesson_anna_live.update_price_per_user_up
Participation.create!(user: edward, lesson: lesson_anna_live)
lesson_anna_live.update_price_per_user_up


Participation.create!(user: nico, lesson: lesson_anna_2)
lesson_anna_inscription.update_price_per_user_up
Participation.create!(user: charles, lesson: lesson_anna_2)
lesson_anna_inscription.update_price_per_user_up
Participation.create!(user: germain, lesson: lesson_anna_2)
lesson_anna_inscription.update_price_per_user_up
Participation.create!(user: damien, lesson: lesson_anna_2)
lesson_anna_inscription.update_price_per_user_up
Participation.create!(user: edward, lesson: lesson_anna_2)
lesson_anna_inscription.update_price_per_user_up




#COURS GERMAIN
Participation.create!(user: anna, lesson: lesson_germain_1)
lesson_germain_1.update_price_per_user_up
Participation.create!(user: nico, lesson: lesson_germain_1)
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



Participation.create!(user: lily, lesson: lesson_damien_2)
lesson_damien_2.update_price_per_user_up
Participation.create!(user: nico, lesson: lesson_damien_2)
lesson_damien_2.update_price_per_user_up
Participation.create!(user: helo, lesson: lesson_damien_2)
lesson_damien_2.update_price_per_user_up



Participation.create!(user: anna, lesson: lesson_damien_3)
lesson_damien_3.update_price_per_user_up
Participation.create!(user: lily, lesson: lesson_damien_3)
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
lesson_edward_4.update_price_per_user_up
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
Participation.create!(user: edward, lesson: lesson_charles)
lesson_charles_4.update_price_per_user_up
Participation.create!(user: nico, lesson: lesson_charles_4)
lesson_charles_4.update_price_per_user_up
Participation.create!(user: lily, lesson: lesson_charles_4)
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
