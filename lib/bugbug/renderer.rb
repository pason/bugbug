module Bugbug
	module Renderer
		
		## Display html,css,js output
		def output(payload)
			output = css + js + Erubis::Eruby.new(File.read(File.dirname(__FILE__) + '/views/bugbug.erb')).result({payload: payload})
		end

		#fetch css file
		def css
			'<style>' + File.read(File.dirname(__FILE__) + '/css/bugbug.css') + '</style>'
		end

		#fetch js code
		def js
			'<script type="text/javascript">' + File.read( File.dirname(__FILE__) + '/js/bugbug.js') + '</script>'
		end


	end
end