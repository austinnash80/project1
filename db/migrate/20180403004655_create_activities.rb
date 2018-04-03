class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.text :activity1
      t.text :activity2
      t.text :activity3

      t.timestamps
    end
  end
end
