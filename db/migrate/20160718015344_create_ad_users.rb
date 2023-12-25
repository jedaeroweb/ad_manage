class CreateAdUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :ad_users do |t|
      t.references :ad
      t.references :user
      t.references :ad_log_type

      t.timestamps
    end
  end
end
