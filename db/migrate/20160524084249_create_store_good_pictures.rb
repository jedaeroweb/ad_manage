class CreateStoreGoodPictures < ActiveRecord::Migration[6.0]
  def change
    create_table :store_good_pictures do |t|
      t.references :store_good
      t.string :type, :limit => 40
      t.string :title, :null => true, :limit => 100
      t.string :filename, :limit => 100
      t.string :photo      
      t.boolean :flag, :null => false, :default  => true
      t.timestamps
    end
  end
end
