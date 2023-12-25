class CreateUserTargetAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :user_target_addresses do |t|
      t.references :user, :null=>false      
      t.references :address, :null=>false
    end

    add_index :user_target_addresses, [:user_id, :address_id], :unique=>true
  end
end
