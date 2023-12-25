class CreateStoreApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :store_applications do |t|
      t.references :store_good
      t.references :user
      t.timestamps
    end
  end
end
