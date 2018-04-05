class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.text :email
      t.text :fname
      t.text :lname
      t.string :password_digest
      t.timestamps
    end
  end
end
