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
#scopes
scope :by_name, -> name { where(name: name) }
scope :by_age, -> age { where(age: age) }
scope :by_weight, -> weight {where(weight: weight)}

# shows what characters are in a certain movie id 
scope :by_movie, -> id{joins(movie_characters: :movie).where(movies: {id: id })}



#validations
validates :name, :picture, :age, :story, :weight, presence: true 

validates :name, uniqueness: {on: :create, message: 'A character with that name already exists' }

validates :name, length: { in: 3..25, message: 'The character name length must be higher than 3 letters and has a maximum of 25 letters' }

validates :name, :story, format: { with: /\A[a-zA-Z0-9 ]+\z/, message: 'Only letters and numbers can be used' }

validates :age, :weight, format: { with: /[0-9]/, message: 'Only numbers can be used' }

validates :picture, length: { maximum: 250, message: 'The maximum length for a picture link is 250 characters' }

#associations
has_many :movie_characters
has_many :movies, through: :movie_characters
end
