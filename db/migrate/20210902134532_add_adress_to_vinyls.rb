class AddAdressToVinyls < ActiveRecord::Migration[6.0]
  def change
    add_column :vinyls, :address, :string
  end
end
