class CreateRetailPrices < ActiveRecord::Migration
  def change
    create_table :retail_prices do |t|
      t.float :r_reg
      t.float :r_mid
      t.float :r_pre
      t.belongs_to :retailer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
