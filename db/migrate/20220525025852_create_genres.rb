class CreateGenres < ActiveRecord::Migration[7.0]
  def change
    create_table :genres do |t|
      t.string :picture
      t.string :name
      t.timestamps
    end
  end
end
