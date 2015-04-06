class Brand < ActiveRecord::Base
   
    validates_presence_of :name, :cif

end
