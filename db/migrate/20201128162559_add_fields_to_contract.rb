class AddFieldsToContract < ActiveRecord::Migration[6.0]
  def change
    add_column :contracts, :estimated_price, :integer
    add_column :contracts, :price, :integer
  end
end
