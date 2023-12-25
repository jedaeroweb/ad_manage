class CreateAdOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :ad_options do |t|
      t.references :ad, :null => false
      t.boolean :web_flag, :null => false, :default => false
      t.string :web_addr, :limit => 200, :null => true
      t.string :web_comment, :limit => 200, :null => true
      t.boolean :callback_flag, :null => false, :default => false
      t.string :callback_number, :limit => 50, :null => true
      t.string :callback_comment, :limit => 200, :null => true
      t.text :html_data, :null => true      
      t.timestamps
    end
  end
end
