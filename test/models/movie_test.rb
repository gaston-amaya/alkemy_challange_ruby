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
require "test_helper"

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
