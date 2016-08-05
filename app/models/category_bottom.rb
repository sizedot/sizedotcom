class CategoryBottom < ActiveRecord::Base
  belongs_to :brandlist
  has_many :pants_sizes
  has_many :jeans_sizes
end
