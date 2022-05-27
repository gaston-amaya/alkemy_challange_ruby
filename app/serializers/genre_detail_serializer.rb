class GenreDetailSerializer < ActiveModel::Serializer
  attributes :picture, :name

  has_many :movies
end
