class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6, message: "Comment cannot be shorter than 6 characters" }
  validates :movie_id, uniqueness: { scope: :list_id, message: "already on the list baba" }
  # validates :list_id, uniqueness: { scope: :list_id, message: "already on the list baba" }
end
