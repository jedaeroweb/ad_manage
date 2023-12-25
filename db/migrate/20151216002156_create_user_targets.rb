class CreateUserTargets < ActiveRecord::Migration[6.0]
  def change
    create_table :user_targets do |t|
      t.references :user, :null=>false 
      t.references :target, :null=>false 
    end

    add_index :user_targets, [:user_id, :target_id], :unique=>true
  end
end
