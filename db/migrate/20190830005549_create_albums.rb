class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :description
      t.date :release_date
      t.integer :total_played, default: 0
      t.references :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
