class AddSponsoredToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :sponsored, :boolean, :default => false
  end
end
