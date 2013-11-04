class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :file
      t.belongs_to :album
      t.timestamps
    end
  end
end
