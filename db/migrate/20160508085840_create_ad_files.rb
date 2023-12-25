class CreateAdFiles < ActiveRecord::Migration[6.0]
  def change
    create_table :ad_files do |t|
      t.references :ad, :null => false
      t.references :ad_file_type, :null => false
      t.string :filetype, :null => false
      t.string :fileext, :null => false
      t.integer :filesize, :null => false, :default => 0
      t.string :checksum, :null => false
      t.string :photo
      t.boolean :flag, :null => false, :default => true
      t.timestamps
    end
   end
end
