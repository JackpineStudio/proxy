class ProductsController < ApplicationController
	def index
		@responseBody = `wget -q -O- --header='Host: www.facebook.com' --header='User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:20.0) Gecko/20100101 Firefox/20.0' 'www.facebook.com'`
		
		respond_to do |format|
			format.html
		end
	end
end
