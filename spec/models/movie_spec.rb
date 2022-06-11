require 'rails_helper'

RSpec.describe Movie, type: :model do
  before(:all) do
    @movie = Movie.create(picture:'picture', title:'interstellar', rating: 5, genre_id: 1)
end

  it 'checks that a movie can be created' do
    expect(@movie).to be_valid
  end

  it 'checks that a movie can be read' do
    expect(Movie.first).to eq(@movie)
  end

  it 'checks that a movie can be updated' do
    @movie.update(:title => 'interstellar 2')
    expect(Movie.first).to eq(@movie)
end

it 'checks that a movie can be destroyed' do
  @movie.destroy
  expect(Movie.count).to eq(0)
end
end

