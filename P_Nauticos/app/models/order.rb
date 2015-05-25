class Order < ActiveRecord::Base
  attr_accessor :card_type, :card_number, :card_expiration_month, :card_expiration_year,
  :card_verification_value

  has_many :order_items
  has_many :books, :through => :order_items
end
