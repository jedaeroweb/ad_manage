class CreateAdMemos < ActiveRecord::Migration[6.0]
  def change
    create_table :ad_memos do |t|
      t.text :content,:null=>false
    end
  end
end
