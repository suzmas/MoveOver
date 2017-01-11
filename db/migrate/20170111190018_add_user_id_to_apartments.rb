class AddUserIdToApartments < ActiveRecord::Migration[5.0]
  def change
    add_column :apartments, :user_id, :integer
  end
end
