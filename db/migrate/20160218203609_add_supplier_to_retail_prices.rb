class AddSupplierToRetailPrices < ActiveRecord::Migration
  def change
    add_reference :retail_prices, :supplier, index: true, foreign_key: true
  end
end
