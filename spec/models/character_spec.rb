require 'rails_helper'

RSpec.describe Character, type: :model do
  before(:all) do
    @character = Character.create(picture:'picture', name:'gaston', age: 23, weight: 85, story:'my story')
end

  it 'checks that a character can be created' do
    expect(@character).to be_valid
  end

  it 'checks that a character can be read' do
    expect(Character.first).to eq(@character)
  end

  it 'checks that a character can be updated' do
    @character.update(:name => 'guillermo')
    expect(Character.first).to eq(@character)
end

it 'checks that a character can be destroyed' do
  @character.destroy
  expect(Character.count).to eq(0)
end
end
