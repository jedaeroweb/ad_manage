class CreateUserAddressBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :user_address_books do |t|
      t.references :user, :null=>false
      t.references :address, :null=>false
      t.string :name, :null=>false, :limit=>60
      t.string :mobilephone, :null=>false, :limit=>60
      t.string :address, :null=>false
      t.integer :flag, :null => false, :default => 0      
      t.timestamps
    end
  end
end

