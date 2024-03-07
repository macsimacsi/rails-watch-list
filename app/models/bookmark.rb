class Bookmark < ApplicationRecord
  belongs_to :movies
  belongs_to :lists

  validates :movie_id, presence: true
  validates :list_id, presence: true
  validates :comment, length: { minimum: 6 }

  validates :movie_id, uniqueness: { scope: :list_id }
end
