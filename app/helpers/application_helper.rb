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
end