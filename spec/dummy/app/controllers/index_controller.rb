class IndexController < ApplicationController

	def index
		
		
		#Post.create(:name=>'sdsd')
		Post.find(1)
		Post.where('name = ?','sss')
	end
end
