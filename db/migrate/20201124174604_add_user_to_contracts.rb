class AddUserToContracts < ActiveRecord::Migration[6.0]
  def change
    add_reference :contracts, :user, null: true, foreign_key: true
  end
end
