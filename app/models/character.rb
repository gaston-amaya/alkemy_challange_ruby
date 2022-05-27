class Character < ApplicationRecord
    has_many :movie_characters
    has_many :movies, through: :movie_characters
end
