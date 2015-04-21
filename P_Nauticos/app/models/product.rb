class Product < ActiveRecord::Base
	belongs_to :brand
	validates_presence_of :brand_id, :name, :price

	has_attached_file :product_img, styles: { :medium => "125x125>", :thumb => "35x35>" }
	validates_attachment :product_img,
	:content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] }
end