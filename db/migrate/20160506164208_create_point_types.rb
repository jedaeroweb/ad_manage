class CreatePointTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :point_types do |t|
      t.string :title, :null=>false, :limit=>60
      t.integer :amount, :null => false, :default => 0
      t.boolean :flag, :null=>false, :default=>true 
      t.timestamps     
    end
  end
end
