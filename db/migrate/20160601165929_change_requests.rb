class ChangeRequests < ActiveRecord::Migration[6.0]
  def change
    remove_column :requests, :account_owner
    remove_column :banks, :memo
    remove_column :banks, :bank_code
  end
end
