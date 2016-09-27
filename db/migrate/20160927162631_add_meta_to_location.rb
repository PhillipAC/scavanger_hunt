class AddMetaToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :meta, :string
  end
end
