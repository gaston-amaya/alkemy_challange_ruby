class Movie < ApplicationRecord
    belongs_to :genre
    has_many :movie_characters
    has_many :characters, through: :movie_characters
end
