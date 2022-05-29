# == Schema Information
#
# Table name: movie_characters
#
#  id           :integer          not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  character_id :integer          not null
#  movie_id     :integer          not null
#
# Indexes
#
#  index_movie_characters_on_character_id  (character_id)
#  index_movie_characters_on_movie_id      (movie_id)
#
# Foreign Keys
#
#  character_id  (character_id => characters.id)
#  movie_id      (movie_id => movies.id)
#
class MovieCharacter < ApplicationRecord
    belongs_to :character
    belongs_to :movie
end
