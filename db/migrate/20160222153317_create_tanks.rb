class CreateTanks < ActiveRecord::Migration
  def change
    create_table :tanks do |t|
      t.string :type_of_fuel
      t.integer :size
      t.string :registration_number
      t.integer :station_id

      t.timestamps null: false
    end
    add_index :tanks, :station_id
  end
end
