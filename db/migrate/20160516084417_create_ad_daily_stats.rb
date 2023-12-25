class CreateAdDailyStats < ActiveRecord::Migration[6.0]
  def change
    create_table :ad_daily_stats do |t|
      t.references :ad_log_type
      t.references :ad           
      t.date :date
      t.integer :hour
      t.integer :log_count
      t.integer :point_sum      
      t.timestamps
    end
  end
end
