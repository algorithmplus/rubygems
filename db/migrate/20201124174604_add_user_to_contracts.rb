class AddUserToContracts < ActiveRecord::Migration[6.0]
  def change
    add_reference :contracts, :user, null: false, foreign_key: true
  end
end
