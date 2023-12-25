class CreateAdTargetAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :ad_target_addresses do |t|
      t.references :ad_schedule, :null=>false
      t.references :address, :null=>false
      t.boolean :flag, :null=>false, :default=>true
      t.timestamps
    end

    add_index :ad_target_addresses, [:ad_schedule_id,:address_id], :unique => true      
  end
end
