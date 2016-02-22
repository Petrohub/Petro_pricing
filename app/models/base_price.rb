class BasePrice < ActiveRecord::Base
  after_update :update_retail_customers
  belongs_to :supplier


  def update_retail_customers
    supplier.relations.each do |relation|
      relation.retail_price.r_85 = b_85 + relation.f_85
      relation.retail_price.r_87 = b_87 + relation.f_87
      relation.retail_price.r_91 = b_91 + relation.f_91
      relation.retail_price.r_diesel = b_diesel + relation.f_diesel
      relation.retail_price.r_offroad = b_offroad + relation.f_offroad
      relation.retail_price.save
    end
  end
end
