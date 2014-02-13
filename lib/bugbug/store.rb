module Bugbug
	
	class Store
		include Singleton
		include Renderer


		def initialize
			@slq_queries = Array.new
		end

		def push_query(query)
			@slq_queries << query
		end	

		def get_sql_queries
			output @slq_queries
		end

		def get_queries_count
			@slq_queries.length
		end

		def flush
			@slq_queries = Array.new
		end

	end
end
