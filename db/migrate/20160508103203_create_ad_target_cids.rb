class CreateAdTargetCids < ActiveRecord::Migration[6.0]
  def change
    create_table :ad_target_cids do |t|
      t.references :ad_schedule, :null => false
      t.string :cid, :null => false, :limit => 20
      t.boolean :flag, :null=>false, :default=>true
      t.timestamps
    end
    
    add_index :ad_target_cids, [:ad_schedule_id, :cid], :unique=>true    
  end
end
