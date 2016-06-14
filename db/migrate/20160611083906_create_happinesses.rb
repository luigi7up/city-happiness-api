class CreateHappinesses < ActiveRecord::Migration[5.0]
  def change
    create_table :happinesses do |t|
      t.integer :device_id
      t.integer :feeling_like
      t.float :lat
      t.float :lng
      t.string :city
      t.string :country
      t.string :neighborhood
      t.timestamps
    end
  end
end
