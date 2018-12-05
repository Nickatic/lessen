class Lesson < ApplicationRecord
  has_many :participations, dependent: :destroy
  belongs_to :teacher, class_name: "User", foreign_key: :user_id
  GRADES = ["Terminale", "Première"]
  # GRADESSELECT = GRADES.each_with_index.map { |grade, index| [grade, index] }
  TOPICS = ["Mathématiques", "Physique-chimie", "Philosophie", "SVT", "Français"]

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
  # validates :starts_at, presence: true
  validates :date, presence: true
  validates :duration, presence: true
  validates :description, presence: true

  def price_per_user
    price / participations.count
  end
end
