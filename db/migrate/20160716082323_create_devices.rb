class CreateDevices < ActiveRecord::Migration[6.0]
  def change
    create_table :devices do |t|
      t.string :device_id, :limit => 100
      t.string :registration_id, :limit => 100
      t.references :user
      t.boolean :flag, :default => true
      t.timestamps
    end
  end
end
