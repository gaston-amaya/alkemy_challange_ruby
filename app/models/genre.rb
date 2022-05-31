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

  validates :name, length: { in: 3..25 }

  validates :name, format: { with: /\A[a-zA-Z0-9 ]+\z/ }

  validates :picture, length: { maximum: 250 }

  has_many :movies
end
