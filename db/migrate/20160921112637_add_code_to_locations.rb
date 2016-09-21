class AddCodeToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :code, :string
  end
end
