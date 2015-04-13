class Products < ActiveRecord::Migration
	def change
		create_table :products do |t|
			t.string :name
			t.float :price
			t.string :description
			t.string :product_img
			t.timestamps

		end
	end

	def self.down
		drop_table :products
	end
end	

