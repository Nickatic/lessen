class Review < ApplicationRecord
  belongs_to :lesson
  validates :content, length: { minimum: 20 }
end
