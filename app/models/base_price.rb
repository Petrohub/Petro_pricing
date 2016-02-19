class BasePrice < ActiveRecord::Base
  after_update :gen_retail_price
  belongs_to :supplier

  def gen_retail_price
    supplier.retailers.all do |retailer|
      retailer.retail_prices.all do |retail_price|
        retailer.relations.where(supplier_id: supplier.id) do |relation|
          retail_price.r_reg = b_reg + relation.f_reg
          retail_price.r_mid = b_mid + relation.f_mid
          retail_price.r_pre = b_pre + relation.f_pre
          retail_price.save
        end
      end
    end
  end
end
