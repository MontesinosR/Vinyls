class CreateVinyls < ActiveRecord::Migration[6.0]
  def change
    create_table :vinyls do |t|
      t.string :album_name
      t.string :artist
      t.string :description
      t.string :condition
      t.string :genre
      t.float :daily_rate
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
