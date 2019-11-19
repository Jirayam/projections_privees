class AddPhotoToViewings < ActiveRecord::Migration[5.2]
  def change
    add_column :viewings, :photo, :string
  end
end
