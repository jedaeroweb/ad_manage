class CreateStoreOrderStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :store_order_statuses do |t|
      t.string :title, :limit => 50
      t.boolean :flag, :null => false, :default => true
      t.timestamps
    end
  end
end
