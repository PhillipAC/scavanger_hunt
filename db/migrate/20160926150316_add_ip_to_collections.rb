class AddIpToCollections < ActiveRecord::Migration
  def change
    add_column :collections, :ip, :string
  end
end
