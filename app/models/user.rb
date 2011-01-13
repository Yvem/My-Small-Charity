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

class User < NaturalPerson

	attr_accessible :contact_email
	
	# contact e-mail
	# the active e-mail usable to contact this user
	# ActiveRecord validation : (we use a custom validator for e-mail)
	validates :contact_email, :presence => true, :email => true

end
