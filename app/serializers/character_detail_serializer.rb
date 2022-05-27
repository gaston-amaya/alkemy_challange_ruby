class CharacterDetailSerializer < ActiveModel::Serializer
  attributes :picture, :name, :age, :weight, :story

  has_many :movies, through: :movie_characters
end
