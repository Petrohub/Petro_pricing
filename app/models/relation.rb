class Relation < ActiveRecord::Base
  after_save :gen_retail_price
  belongs_to :retailer
  belongs_to :supplier

  def gen_retail_price
    @retail_price = RetailPrice.new
    @retail_price.r_reg = supplier.base_price.b_reg + f_reg
    @retail_price.r_mid = supplier.base_price.b_mid + f_mid
    @retail_price.r_pre = supplier.base_price.b_pre + f_pre
    @retail_price.retailer = retailer
    @retail_price.supplier = supplier
    @retail_price.save
  end
end
