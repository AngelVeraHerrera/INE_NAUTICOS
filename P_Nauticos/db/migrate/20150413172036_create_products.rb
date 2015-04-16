class CreateProducts < ActiveRecord::Migration
	def change
		create_table :products do |t|
			t.integer :brands_id, :null => false 
			t.string :name
			t.float :price
			t.string :description
			t.string :product_img
						t.string :product_imgsss

			t.timestamps

		end
		execute 'ALTER TABLE products ADD CONSTRAINT fk_brands_products FOREIGN KEY (brands_id) REFERENCES brands(id) ON DELETE CASCADE'
	end

end	

