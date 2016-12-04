class RenameColumnInEvents < ActiveRecord::Migration[5.0]
  def change
  	rename_column :events, :location, :street
  end
end
