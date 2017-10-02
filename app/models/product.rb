class Product < ApplicationRecord
	validates_presence_of :name,:description,:price,:category,:stock
	validates_uniqueness_of :name
end
