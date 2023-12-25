class CreateTargets < ActiveRecord::Migration[6.0]
  def change
    create_table :targets  do |t|
      t.references :target_type, :null=>false
#      t.references :parent_target, :null=>true
      t.string :title, :null=>false, :limit=>100
      t.boolean :flag, :null=>false, :default=>true
      t.timestamps
    end
  end
end
