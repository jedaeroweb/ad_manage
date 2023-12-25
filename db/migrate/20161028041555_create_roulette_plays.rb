class CreateRoulettePlays < ActiveRecord::Migration[6.0]
  def change
    create_table :roulette_plays do |t|
      t.references :roulette_setting
      t.references :user, :null=>false
      t.references :point      
      t.integer :amount, :null=>false
      t.integer :client_ip, :null=>false
      t.timestamps
    end
  end
end
