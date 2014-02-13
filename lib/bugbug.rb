require "bugbug/renderer"
require "bugbug/store"
require "action_controller/base/bugbug"

module Bugbug
	include ActionView::Helpers::OutputSafetyHelper

	def self.track
		if Rails.env.development?
			ActiveSupport::Notifications.subscribe("sql.active_record") do |name, start, finish, id, details|
				Store.instance.push_query(details)
			end
		end
	end

	def self.render
		if Rails.env.development?
			Store.instance.get_sql_queries.html_safe
		end
	end

end
