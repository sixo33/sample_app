class User < ActiveRecord::Base
	before_save { self.email = email.downcase }
	validates :name, 		presence: true, 
							length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
		# /					start of regex
		# \					match start of string
		# [\w+\-.]			at least one character, plus, hyphen, or dot
		# @					literal "at sign"
		# [a-z\d\-.]+		at least one letter, digit, hyphen, or dot
		# \.				literal dot
		# [a-z]+			at least one letter
		# \a-z				match end of a string
		# /					end of regex
		# i					case insensitive	
	validates :email, 		presence: true, 
							format: { with: VALID_EMAIL_REGEX }, 
							uniqueness: { case_sensitive: false }
	validates :password,	length: { minimum: 6 } 
	has_secure_password	
end
