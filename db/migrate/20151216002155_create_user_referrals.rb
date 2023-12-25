class CreateUserReferrals < ActiveRecord::Migration[6.0]
  def change
    create_table :user_referrals do |t|
      t.references :user, :unsigned=>true, :null=>false
      t.references :recommend_user, :unsigned=>true, :null=>false
    end

    add_index :user_referrals, [:user_id, :recommend_user_id], :unique=>true
  end
end
