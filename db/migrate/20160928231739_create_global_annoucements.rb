class CreateGlobalAnnoucements < ActiveRecord::Migration
  def change
    create_table :global_annoucements do |t|
      t.text :content

      t.timestamps null: false
    end
  end
end
