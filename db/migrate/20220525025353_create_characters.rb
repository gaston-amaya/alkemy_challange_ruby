class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :picture
      t.string :name
      t.integer :age
      t.float :weight
      t.string :story
      t.timestamps
    end
  end
end
