# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  age        :integer
#  name       :string
#  picture    :string
#  story      :string
#  weight     :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Character < ApplicationRecord
    has_many :movie_characters
    has_many :movies, through: :movie_characters
end
