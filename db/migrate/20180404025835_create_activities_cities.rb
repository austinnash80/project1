class CreateActivitiesCities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities_cities, :id => false do |t|
      t.integer :activity_id
      t.integer :city_id
    end
  end
end
