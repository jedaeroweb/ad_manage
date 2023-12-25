class CreateAdSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :ad_schedules do |t|
      t.references :ad, :null => false
      t.string :title, :null => true, :limit=>60
      t.datetime :start_time, :null => false
      t.datetime :end_time, :null => false
      t.datetime :expire_time, :null => false
      
      t.integer :start_hour, :null => true
      t.integer :end_hour, :null => true
      
      t.boolean :weekday0, :null => false
      t.boolean :weekday1, :null => false
      t.boolean :weekday2, :null => false
      t.boolean :weekday3, :null => false
      t.boolean :weekday4, :null => false
      t.boolean :weekday5, :null => false
      t.boolean :weekday6, :null => false

      t.boolean :flag, :null=>false, :default=>true
      t.timestamps
    end
  end
end
