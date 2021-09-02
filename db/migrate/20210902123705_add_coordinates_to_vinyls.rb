class AddCoordinatesToVinyls < ActiveRecord::Migration[6.0]
  def change
    add_column :vinyls, :latitude, :float
    add_column :vinyls, :longitude, :float
  end
end
