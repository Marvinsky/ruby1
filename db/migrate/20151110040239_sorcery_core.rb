class SorceryCore < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.string :username,		  :null => false
      t.string :email,            :null => false
      t.string :crypted_password
      t.string :salt

      t.timestamps
    end

    add_index :logins, :email, unique: true
  end
end