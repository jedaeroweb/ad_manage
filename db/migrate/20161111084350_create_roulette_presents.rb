class CreateRoulettePresents < ActiveRecord::Migration[6.0]
  def change
    create_table :roulette_presents do |t|
      t.string :title, :null=>true, :limit=>60
      t.string :photo, :null=>false
      t.boolean :priority, :null=>false, :default=>false
      t.boolean :flag, :null=>false, :default=>true
      t.timestamps
    end
  end
end
