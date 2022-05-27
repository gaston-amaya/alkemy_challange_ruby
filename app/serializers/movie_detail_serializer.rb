class MovieDetailSerializer < ActiveModel::Serializer
    attributes :picture, :title, :rating

    belongs_to :genre
    has_many :characters, through: :movie_characters
end
