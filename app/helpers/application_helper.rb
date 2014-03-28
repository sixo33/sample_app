module ApplicationHelper

	#Returns the full title on a per-page basis
	def full_title(page_title)
	# defines a method, full_title, which will take the argument
	# page_title

		base_title = "Ruby on Rails Tutorial Sample App"
		# stores the basic page title in a string, base_title

		if page_title.empty?
		# runs a test to determine if the page_title argument is
		# an empty string

			base_title
			# in the event that page_title is empty, returns just
			# the base_title

		else
			"#{base_title} | #{page_title}"
			# otherwise (i.e. page_title is not empty) return an
			# interpolated string (e.g. "Ruby on Rails Tutorial
			# Sample App | About Us)

		end	#closes if page_title.empty?

	end #closes def full_title(page_title)

end #closes module ApplicationHelper
