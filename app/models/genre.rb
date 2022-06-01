# == Schema Information
#
# Table name: genres
#
#  id         :integer          not null, primary key
#  name       :string
#  picture    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Genre < ApplicationRecord
  
  
  # validations
  validates :name, :picture, presence: true 

  validates :name, uniqueness: { message: 'a genre with that name already exists' }

  validates :name, length: { in: 3..25, message: 'The genre name length must be higher than 3 letters and has a maximum of 25 letters' }

  validates :name, format: { with: /\A[a-zA-Z0-9 ]+\z/, message: 'Only letters and numbers can be used' }

  validates :picture, length: { maximum: 250, message: 'The maximum length for a picture link is 250 characters' }
  
  
  #associations

  has_many :movies
end
