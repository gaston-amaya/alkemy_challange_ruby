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
class CharacterSerializer < ActiveModel::Serializer
  attributes :picture, :name
end
