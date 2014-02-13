module Bugbug
	module Renderer
		
		## Display html,css,js output
		def output(payload)
			output = "" 
			bar = " <div class='bugbug-bar'> 
						  	<a href='javascript:void(0)' onclick='bugugToogle()' id='bugug-open'> &#43; </a>
						  	<span class='bugbug-rubyver'>Ruby #{RUBY_VERSION}-p#{RUBY_PATCHLEVEL}</span>
								<span class='bugbug-queries'>Total queries: #{Store.instance.get_queries_count} </span>
								<div class='bugbug-ver'>Bugbug #{Bugbug::VERSION} </div>
							</div>"

			payload.each do |p|
				output += "<li class='bugug-row'> 
											<table>
												<tr>
													<td><div class='bugbug-query'> #{p[:sql]} </div> </td>
													<td><div class='bugug-binds'> Binds: #{p[:binds] } </div></td>
									 			<tr>
									 		</table>
									 </li>"
				
				p[:name]
				p[:connection_id]
			end
			
			css + js + "<div class=\"bugug\"> #{bar} 
										<div class=\"bugug-content\"> 
											<ul class='bugug-list'>
												" + output + "
											</ul> 
										</div> 
									</div>"
	
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