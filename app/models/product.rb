class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price

  validates :name,          :presence => true
  validates :description,  :presence => true, :length => {:minimum => 5}
  validates :price,            :presence => true

  has_many :cart_items
end
