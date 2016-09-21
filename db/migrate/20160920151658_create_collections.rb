class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :name
      t.integer :location_id

      t.timestamps null: false
    end
  end
end
