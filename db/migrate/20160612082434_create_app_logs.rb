class CreateAppLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :app_logs do |t|
      t.references :app_log_type
      t.references :user
      t.integer :log_value
      t.timestamps
    end
  end
end
