class CreateStoreGoods < ActiveRecord::Migration[6.0]
  def change
    create_table :store_goods do |t|
      t.integer :store_type_id , :null => false
      t.integer :store_applications_count, :null => false , :default=>0
      t.string :title, :null => false, :limit => 100
      t.string :description_short, :null => false, :limit => 200
      t.text :description, :null => false
      t.integer :stock_count, :null => false, :default => 0
      t.integer :order_count, :null => false, :default => 0
      t.datetime :sale_start_time, :null => false
      t.datetime :sale_end_time, :null => false
      t.float :sale_price, :null => false
      t.string :sale_type, :null => true
      t.boolean :proirity_flag, :null => false, :default => false
      t.boolean :hot_flag, :null => false, :default => false
      t.integer :store_good_pictures_count, :null=>false, :default=>0
      t.boolean :new_flag, :null => false, :default => false      
      t.boolean :flag, :null => false, :default => false
      t.timestamps
    end
  end
end
