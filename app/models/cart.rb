class Cart < ActiveRecord::Base
  attr_accessible :name

  belongs_to :user
  has_many :cart_items
end
