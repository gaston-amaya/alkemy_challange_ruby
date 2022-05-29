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
class GenreSerializer < ActiveModel::Serializer
  attributes :picture, :name
end
