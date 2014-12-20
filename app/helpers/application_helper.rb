module ApplicationHelper
	
	def urls_to_links(s)
		s.gsub! /http:\/\/.*?\s/, "<a href='\1'>\1</a>"
		raw s
	end

	def urls_to_images(s)
		t = /http:\/\/.*\.png/
		s.gsub! t, "<img src=#{t}>"
		raw s
	end

end
