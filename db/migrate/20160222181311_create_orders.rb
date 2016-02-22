class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :order_number
      t.decimal :o_85, default: 0
      t.decimal :o_87, default: 0
      t.decimal :o_91, default: 0
      t.decimal :o_93, default: 0
      t.decimal :o_diesel, default: 0
      t.decimal :o_offroad, default: 0
      t.integer :retailer_id
      t.integer :supplier_id
      t.integer :station_id
      t.integer :retail_price_id
      t.decimal :sub_total
      t.decimal :delivery
      t.integer :status, default: 0
      t.decimal :total

      t.timestamps null: false
    end
  end
end
