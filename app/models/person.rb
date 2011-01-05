class Person < ActiveRecord::Base
	attr_accessor :designation

	validates :designation, :presence => true, :length => { :minimum => 1, :maximum => 70 }


end
