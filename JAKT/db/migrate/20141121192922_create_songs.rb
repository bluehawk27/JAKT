class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name, :artist, :url

      t.timestamps
    end
  end
end
