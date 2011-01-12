# == Schema Information
# Schema version: 20110111170357
#
# Table name: persons
#
#  id            :integer(4)      not null, primary key
#  designation   :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  type          :string(255)
#  contact_email :string(255)
#

class User < NaturalPerson

	# contact e-mail
	# the active e-mail usable to contact this user
	# ActiveRecord validation : (we use a custom validator for e-mail)
	validates :contact_email, :presence => true, :email => true

end
