class CreateRetailers < ActiveRecord::Migration
  def change
    create_table :retailers do |t|
      t.string :name

      t.timestamps null: false
    end
    add_index :retailers, :name
  end
end
