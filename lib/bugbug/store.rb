module Bugbug
	
	class Store
		include Singleton
		include Renderer


		def initialize
			@slq_queries = Array.new
			@action_requests = Array.new
		end

		def push_request(request)
			@action_requests << request
		end

		def push_query(query)
			@slq_queries << query
		end	

		def get_sql_queries
			@slq_queries
		end

		def get_html
			output(@slq_queries, @action_requests)
		end

		def get_queries_count
			@slq_queries.length
		end

		def flush
			@slq_queries = Array.new
			@action_requests = Array.new
		end

	end
end
