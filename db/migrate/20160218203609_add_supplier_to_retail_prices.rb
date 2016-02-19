class AddSupplierToRetailPrices < ActiveRecord::Migration
  def change
    add_column :retail_prices, :supplier_id, :integer, index: true
  end
end
