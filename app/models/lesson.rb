class Lesson < ApplicationRecord
  has_many :participations, dependent: :destroy
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
