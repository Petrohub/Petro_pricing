class CreateBasePrices < ActiveRecord::Migration
  def change
    create_table :base_prices do |t|
      t.float :b_reg
      t.float :b_mid
      t.float :b_pre
      t.belongs_to :supplier, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
