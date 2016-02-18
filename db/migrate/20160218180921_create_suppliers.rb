class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :name

      t.timestamps null: false
    end
    add_index :suppliers, :name
  end
end
