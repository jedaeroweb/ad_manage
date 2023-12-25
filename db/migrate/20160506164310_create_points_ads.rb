class CreatePointsAds < ActiveRecord::Migration[6.0]
  def change
    create_table :points_ads do |t|
      t.references :point, :null=>false
      t.references :ad, :null=>false
    end

    add_index :points_ads, [ :point_id, :ad_id ], :unique=>true
  end
end
