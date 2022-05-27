class MovieCharacter < ApplicationRecord
    belongs_to :character
    belongs_to :movie
end
