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
    has_many :movies
end
