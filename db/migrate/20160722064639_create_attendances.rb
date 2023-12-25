class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.references :attendance_event, :null=>false      
      t.references :user, :null=>false
      t.date :today
      t.integer :count
      t.boolean :flag
      t.timestamps
    end
  end
end
