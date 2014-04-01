# The following method is essentially a copy of that
# found in app/helpers/application_helper.rb; the 
# code in that file is thoroughly commented, so 
# questions about how this code functions should
# be directed there.

# This method declaration makes the full_title method
# available to RSpec, allowing us to make the 
# spec/requests/static_pages_spec.rb file consierably
# more concise.

def full_title(page_title)
	base_title = "Ruby on Rails Tutorial Sample App"
	if page_title.empty?
		base_title
	else
		"#{base_title} | #{page_title}"
	end
end