class CreateRetailPrices < ActiveRecord::Migration
  def change
    create_table :retail_prices do |t|
      t.decimal :r_85
      t.decimal :r_87
      t.decimal :r_91
      t.decimal :r_93
      t.decimal :r_diesel
      t.decimal :r_offroad
      t.integer :retailer, index: true

      t.timestamps null: false
    end
  end
end
