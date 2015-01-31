class User < ActiveRecord::Base
  has_many :consults
  has_many :orders
end
