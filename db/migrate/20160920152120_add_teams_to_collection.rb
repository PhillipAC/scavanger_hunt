class AddTeamsToCollection < ActiveRecord::Migration
  def change
    add_column :collections, :team_id, :integer
  end
end
