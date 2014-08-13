module ApplicationHelper

	def flashes(flash)
		case flash
		when :alert
			"alert-error"
		when :notice
			"alert-success"
		else
			""
		end
	end

	def random_background_images
  		images = ["assets/images/2001.png", "assets/images/1358906983457.jpg", "assets/images/5310355609_c6edb6b888_o.jpg", "assets/images/Animals-Birds.jpg"]
  		images[rand(images.size)]
	end
end