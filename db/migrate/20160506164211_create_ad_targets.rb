class CreateAdTargets < ActiveRecord::Migration[6.0]
  def change
    create_table :ad_targets do |t|
      t.references :ad_schedule, :null=>false      
      t.references :target, :null=>false
      t.boolean :flag, :null=>false, :default=>true
      t.timestamps
    end

    add_index :ad_targets, [:ad_schedule_id,:target_id], :unique => true         
  end
end
