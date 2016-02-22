class User < ActiveRecord::Base
  before_create :generate_account_number
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def role?
    self.class.name.downcase.to_sym
  end

  def admin?
    type == 'Admin'
  end

  def retailer?
    type == 'Retailer'
  end

  def supplier?
    type == 'Supplier'
  end

  # this method generates and assigns random account number to the users
  def generate_account_number
    rand_num = SecureRandom.hex(3).upcase
    self.account_number = admin? ? 'EGYPT' + rand_num : retailer? ? 'RET-NJ' + rand_num : supplier? ? 'SUP-NJ' + rand_num : 0
  end
end
