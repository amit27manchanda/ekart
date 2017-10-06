class Product < ApplicationRecord
	validates_presence_of :name,:description,:price,:category,:stock
	validates_uniqueness_of :name
    belongs_to :user
	mount_uploader :image, ImageUploader

	CATEGORY = %w[Mobile Laptop Tablet]
end
