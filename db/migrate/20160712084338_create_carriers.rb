class CreateCarriers < ActiveRecord::Migration[6.0]
  def change
    create_table :carriers do |t|
      t.string :title, :limit => 60
      t.string :code, :limit => 10
      t.boolean :flag, :default => false
      t.timestamps
    end
  end
end
