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

class Society < MoralPerson
	
	# access control
	attr_accessible :owner_id

	# validations
	validates :owner_id, :presence => true
	
	# associations
	belongs_to :user, :foreign_key => "owner_id"
	has_many :memberships

	# implementation
	
end
