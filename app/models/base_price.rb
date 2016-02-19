class BasePrice < ActiveRecord::Base
  after_update :gen_retail_price
  belongs_to :supplier


  def gen_retail_price
    supplier.relations.each do |relation|
      relation.retail_price.r_reg = b_reg + relation.f_reg
      relation.retail_price.r_mid = b_mid + relation.f_mid
      relation.retail_price.r_pre = b_pre + relation.f_pre
      relation.retail_price.save
    end
  end
end
