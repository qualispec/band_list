class AddPhotoColumnToBands < ActiveRecord::Migration
  def change
    add_column :bands, :photo, :binary
  end
end