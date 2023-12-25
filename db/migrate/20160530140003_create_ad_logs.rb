class CreateAdLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :ad_logs do |t|
      t.references :ad, :null => false
      t.references :user, :null => false
      t.references :ad_log_type, :null => false      
      t.integer :point, :null => false, :default => 0
      t.datetime :created_at
    end

    add_index :ad_logs, [ :ad_id, :ad_log_type_id ]
  end
end
