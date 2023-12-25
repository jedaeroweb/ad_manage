class CreateRoulettePlaysRoulettePresents < ActiveRecord::Migration[6.0]
  def change
    create_table :roulette_plays_roulette_presents do |t|
      t.references :roulette_play, :null=>false
      t.references :roulette_present, :null=>false
      t.string :receive_flag, :null => false, :default => '1', :limit => 1      
    end
  end
end
