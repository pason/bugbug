module ActionController 
  class Base 
   		
   	after_action :reset_store

  	def reset_store
  		Bugbug::Store.instance.flush
  	end

  end
end