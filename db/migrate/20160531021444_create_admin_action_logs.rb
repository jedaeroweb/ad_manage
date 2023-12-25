class CreateAdminActionLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :admin_action_logs do |t|
      t.references :admin
      t.string :action, :null => false, :limit => 100
      t.string :user_ip, :null => false
      t.timestamps
    end
  end
end
