module Spoonacular

	class API
		def get_product_information(id)
			method = "/food/products/#{id}"
			uri = Spoonacular.build_endpoint(method, "")
			response = Spoonacular.get({key: @key, uri: uri})
			return response
		end

		def get_recipe_information(id)
			method = "/recipes/#{id}/information"
			uri = Spoonacular.build_endpoint(method, "")
			response = Spoonacular.get({key: @key, uri: uri})
			return response
		end

		def get_recipe_information_bulk(ids)
			ids = ids.kind_of?(Array) ? ids.join(',') : ids
			query = "ids=#{ids}"
			method = "/recipes/informationBulk"
			uri = Spoonacular.build_endpoint(method, query)
			response = Spoonacular.get({key: @key, uri: uri})
			return response
		end
	end

end
