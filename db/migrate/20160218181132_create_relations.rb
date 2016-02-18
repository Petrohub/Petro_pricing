class CreateRelations < ActiveRecord::Migration
  def change
    create_table :relations do |t|
      t.integer :retailer_id
      t.integer :supplier_id

      t.timestamps null: false
    end
  end
end
