class CreateAds < ActiveRecord::Migration[6.0]
  def change
    create_table :ads do |t|
      t.references :admin, :null=>false  
      t.references :sponsor, :null=>false    
      t.references :agent, :null=>false   
      t.references :ad_type, :null=>false          
      t.string :title, :null=>false ,:limit=>60
      t.string :description, :null => true, :limit => 200
      t.string :display_type, :default => 0, :null => true, :limit => 10      
      t.boolean :priority, :null => false, :default => false                  
      t.integer :ad_schedules_count, :null => false, :default => 0
      t.integer :ad_files_count, :null => false, :default => 0
      t.integer :ad_file_image_count, :null => false, :default => 0
      t.boolean :flag, :null=>false, :default=>false
      t.timestamps
    end
  end
end
