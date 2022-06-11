require 'rails_helper'

RSpec.describe Genre, type: :model do
  before(:all) do
    @genre = Genre.create(picture:'picture', name:'fiction')
end

  it 'checks that a genre can be created' do
    expect(@genre).to be_valid
  end

  it 'checks that a genre can be read' do
    expect(Genre.first).to eq(@genre)
  end

  it 'checks that a genre can be updated' do
    @genre.update(:name => 'horror')
    expect(Genre.first).to eq(@genre)
end

it 'checks that a genre can be destroyed' do
  @genre.destroy
  expect(Genre.count).to eq(0)
end
end
