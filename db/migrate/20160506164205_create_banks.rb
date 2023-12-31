class CreateBanks < ActiveRecord::Migration[6.0]
  def change
    create_table :banks do |t|
      t.string :title, :null=>false, :limit=>60      
      t.string :bank_code, :null=>false, :limit=>10
      t.string :memo, :null=>true
      t.boolean :flag, :null=>false, :default=>true
      t.timestamps    
    end
  end
end
