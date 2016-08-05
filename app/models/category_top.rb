class CategoryTop < ActiveRecord::Base
  belongs_to :brandlist
  has_many :shirts_sizes
  has_many :tshirts_sizes
  has_many :knit_sizes
end
