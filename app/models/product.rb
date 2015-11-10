    # t.string   "name"
    # t.integer  "quantity"
    # t.decimal  "price"
    # t.string   "brand"
    # t.string   "code"

class Product < ActiveRecord::Base
	require 'csv'

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			puts row.to_hash
			# {"Codes"=>"60", "Brands"=>"Corona  24oz Bottles", nil=>nil, "Prices"=>"$26.50 "}
			product_hash = row.to_hash #exclude the price field
			product = Product.where(code: product_hash["Codes"])

			if product.count == 1
				product.first.update_attributes(product_hash)
			else
				Product.create(code: product_hash["Codes"], 
					brand: product_hash["Brands"],
					price: product_hash["Prices"].match(/(\d.+)/)[1].gsub(',','').to_f)
			end # end if !product.nil
		end # end CSV.foreach
	end # end self.import(file)

end # end class
