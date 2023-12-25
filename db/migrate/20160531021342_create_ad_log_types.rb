class CreateAdLogTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :ad_log_types do |t|
      t.string :title, :null => false, :limit=>60   
      t.timestamps
    end
  end
end
