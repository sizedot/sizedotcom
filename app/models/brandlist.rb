class Brandlist < ActiveRecord::Base
  has_many :category_tops
  has_many :category_bottoms
end
