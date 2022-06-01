# == Schema Information
#
# Table name: movies
#
#  id         :integer          not null, primary key
#  picture    :string
#  rating     :integer
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  genre_id   :integer          not null
#
# Indexes
#
#  index_movies_on_genre_id  (genre_id)
#
# Foreign Keys
#
#  genre_id  (genre_id => genres.id)
#
class Movie < ApplicationRecord

#validations
  validates :picture, :rating, :title, :genre_id, presence: true

  validates :title, uniqueness:{ message: 'A movie with that title already exists' }

  validates :title, length: { in: 3..50, message: 'The title length must be higher than 3 letters and has a maximum of 50 letters'}

  validates :title, format: { with: /\A[a-zA-Z0-9 ]+\z/, message: 'only letters and numbers are accepted' }

  validates :rating, format: { with: /[1-5]/, message: 'The movie can only be rated 1-5'}

  validates :rating, length: { maximum: 1, message: 'The movie can only be rated 1-5' }

  validates :picture, length: { maximum: 250, message: 'The maximum length for a picture link is 250 characters' }



#associations
    belongs_to :genre
    has_many :movie_characters
    has_many :characters, through: :movie_characters
end
