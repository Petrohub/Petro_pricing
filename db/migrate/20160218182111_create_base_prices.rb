class CreateBasePrices < ActiveRecord::Migration
  def change
    create_table :base_prices do |t|
      t.decimal :b_85
      t.decimal :b_87
      t.decimal :b_91
      t.decimal :b_93
      t.decimal :b_diesel
      t.decimal :b_offroad
      t.integer :supplier_id, index: true

      t.timestamps null: false
    end
  end
end
