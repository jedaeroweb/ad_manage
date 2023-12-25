class CreateAdFileTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :ad_file_types do |t|
      t.string :title, :null=>false, :limit=>60
      t.boolean :flag, :null=>false, :default=>true  
      t.timestamps
    end
  end
end
