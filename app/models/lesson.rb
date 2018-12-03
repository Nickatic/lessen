class Lesson < ApplicationRecord
  has_many :participations, dependent: :destroy
  belongs_to :teacher, class_name: "User", foreign_key: :user_id
  GRADES = ["Terminale", "Première"]
  # GRADESSELECT = GRADES.each_with_index.map { |grade, index| [grade, index] }
  TOPICS = {
    "Terminale" => {
      "Mathématiques" => [ "Trigonométrie", "Fonctions", "Matrices", "Suites"],
      "Physique-chimie" => [ "Ondes et particules","Analyse spectrale", "Temps, mouvement et évolution", "Structure et transformation de la matière", " Énergie, matière et rayonnement" ],
      "Philosophie" => ["Le sujet", "La culture", "La raison et le réel", "La politique", "La morale"],
      "SVT" => ["Neurone et fibre musculaire", "Le maintien de l’intégrité de l’organisme", "La plante domestiquée", "Géothermie et propriétés thermiques de la Terre", "Le domaine continental et sa dynamique", "Génétique et évolution"]
    },
    "Première" => {
      "SVT" => ["Expression, stabilité et variation du patrimoine génétique", "La tectonique des plaques : l’histoire d’un modèle", "Tectonique des plaques et géologie appliquée", "Nourrir l’humanité", "Féminin, masculin", "Variation génétique et santé", "De l’œil au cerveau : quelques aspects de la vision"],
      "Mathématiques" => ["Analyse", "Géométrie", "Statistiques et probabilités"],
      "Français" => ["La question de l’Homme", "Écriture poétique et quête du sens", "Le texte théâtral et sa représentation", "Le personnage de roman"],
      "Physique-chimie" => ["Couleur, vision et image","Cohésion et transformations de la matière", "Champs et forces", "Formes et principe de conservation de l'énergie", "Convertir l'énergie et économiser les ressources", "Synthèse des molécules et nouveaux matériaux"]
    }
  }
  include PgSearch

  pg_search_scope :search_by_grade,
      against: [:grade],
      using: {
        tsearch: { prefix: true }
      }
  pg_search_scope :search_by_topic,
      against: [:topic],
      using: {
        tsearch: { prefix: true }
      }

      pg_search_scope :search_by_subtopic,
          against: [:subtopic],
          using: {
            tsearch: { prefix: true }
          }
  pg_search_scope :search_by_keyword,
      against: [:name, :description],
      using: {
        tsearch: { prefix: true }
      }


  validates :name, presence: true
  validates :topic, presence: true
  validates :subtopic, presence: true
  validates :min_num_of_participants, presence: true
  validates :max_num_of_participants, presence: true
  validates :price, presence: true
  validates :starts_at, presence: true
  validates :ends_at, presence: true
  validates :duration, presence: true
  validates :description, presence: true
end
