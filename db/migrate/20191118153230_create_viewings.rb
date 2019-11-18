class CreateViewings < ActiveRecord::Migration[5.2]
  def change
    create_table :viewings do |t|
      t.string :movie_info
      t.integer :capacity
      t.date :date
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
