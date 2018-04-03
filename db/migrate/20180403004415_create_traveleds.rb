class CreateTraveleds < ActiveRecord::Migration[5.1]
  def change
    create_table :traveleds do |t|
      t.text :country1
      t.text :country2
      t.text :country3

      t.timestamps
    end
  end
end
