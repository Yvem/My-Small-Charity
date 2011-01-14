# == Schema Information
# Schema version: 20110113161519
#
# Table name: persons
#
#  id            :integer(4)      not null, primary key
#  type          :string(255)
#  designation   :string(255)
#  contact_email :string(255)
#  owner_id      :integer(4)
#  created_at    :datetime
#  updated_at    :datetime
#

require 'digest' # for passwords. XXX To delegate

class User < NaturalPerson

	### access control
	attr_accessor :password # virtual attribute
	attr_accessible :contact_email, :password
	
	### validations
	validates :contact_email, :presence => true, :email => true # we use a custom ActiveRecord validator for e-mail
	validates :password, :presence => true, :length => { :within => 6..40 }

	### Implementation
	before_save :generate_password_hash_M1
	
	def self.authenticate(email, submitted_password)
		user = find_by_contact_email(email)
		return nil  if user.nil?
		return user if user.password_match?(submitted_password)
	end

	# Return true if the user's password matches the submitted password.
	def password_match?(submitted_password)
		# Compare encrypted_password with the encrypted version of
		# submitted_password.
		compute_password_hash_M1(submitted_password) == self.password_hash
	end
		
	# def gravatar
		# "gravatarU"
	# end
	
protected
	def generate_password_hash_M1
	
		if new_record? then
			self.salt = ActiveSupport::SecureRandom.base64(12)
		end

		self.password_hash = compute_password_hash_M1(self.password)
	end
	
	def compute_password_hash_M1(password)
		Digest::SHA2.hexdigest(password + self.salt)
	end
	
	#self.password = nil # on oublie le mot de passe en clair
end

