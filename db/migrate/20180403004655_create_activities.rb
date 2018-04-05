class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.text :event
      t.integer :city_id

      t.timestamps
    end
  end
end
