class CreateDeleteUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :delete_users do |t|
      t.string :username, :null => false, :limit=>60
      t.string :nickname, :null => false, :limit=>60 
      t.string :email,     :null => false, :limit=>60
      t.string :nation_num, :null=>false, :default=>'82', :limit=>10
      t.string :mobile_num, :null=>false, :limit=>20
      t.timestamps                     
    end
  end
end
