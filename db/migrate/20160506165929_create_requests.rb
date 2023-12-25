class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.references :user
      t.references :request_setting
      t.references :point   # just references0
      t.references :request_type
      t.references :bank
      t.integer :amount, :null=>false, :default=>0
      t.string :account_owner, :null=>false, :limit=>100
      t.string :account_number, :null=>false, :limit=>100
      t.timestamps
    end
  end
end