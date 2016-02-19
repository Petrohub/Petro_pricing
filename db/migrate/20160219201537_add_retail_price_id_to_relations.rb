class AddRetailPriceIdToRelations < ActiveRecord::Migration
  def change
    add_column :relations, :retail_price_id, :integer
  end
end
