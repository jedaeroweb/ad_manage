class ChangeAdLogs < ActiveRecord::Migration[6.0]
  def self.up
    add_column :ad_logs, :clientpoint, :integer
    add_column :ad_logs, :clienttime, :integer
  end
  
  def self.down
    remove_column :ad_logs, :clientpoint
    remove_column :ad_logs, :clienttime
  end
end
