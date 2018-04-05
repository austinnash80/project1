class CreateCitiesUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :cities_users, :id => false do |t|
      t.integer :city_id
      t.integer :user_id

    end
  end
end
