class Product < ActiveRecord::Base
	belongs_to :brand
	    validates_presence_of :name

end
