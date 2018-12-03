class Lesson < ApplicationRecord
  has_many :participations, dependent: :destroy
  belongs_to :teacher, class_name: "User", foreign_key: :user_id

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
