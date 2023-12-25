class CreateUserLoginLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :user_login_logs do |t|
      t.references :user
      t.string :device_id, :null => true, :limit => 64
      t.integer :client_ip, :null => false
      t.boolean :flag, :null => false, :default => false
      t.timestamps
    end
  end
end
