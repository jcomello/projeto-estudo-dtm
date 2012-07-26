class User < ActiveRecord::Base
  attr_accessible :adress, :comment, :name

  validates :name,    :presence => true
  validates :adress,   :presence => true,   :length => { :maximum => 50}

  has_many :carts
end
