class CreateAppLogTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :app_log_types do |t|
      t.string :title
      t.boolean :flag
      t.timestamps
    end
  end
end
