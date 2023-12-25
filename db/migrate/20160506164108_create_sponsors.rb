class CreateSponsors < ActiveRecord::Migration[6.0]
  def change
    create_table :sponsors do |t|   
      t.string :title, :null=>false, :limit=>60
      t.integer :ads_count,:null => false, :default => 0      
      t.boolean :flag, :null=>false, :default=>true      
      t.timestamps
    end    
  end
end
