class Category < ApplicationRecord
	#scope :electronics, -> {find_by_name("Electronics")}
	#crear de forma dinamica metodos
	distinct.map{|c| c.name}.each do |v| 
		self.class.class_eval do
			define_method v.downcase.split(" ").join("_") do 
				find_by_name(v)
			end
		end
	end
	has_many :products
end