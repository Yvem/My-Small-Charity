require 'spec_helper'

describe MoralPerson do

	# this is not really a test, this is a reminder !
	# because "ActiveRecord" objects behave very differently than normal objects
	# that should be taken in account in testing this class
	it { should be_kind_of(ActiveRecord::Base) }

	it { should be_kind_of(Person) }

	it "should report as a moral person" do
		# normal person
		mp = described_class.new(:designation => "A")

		mp.is_moral?.should be_true
	end

	it "should not report as a natural person" do
		# normal person
		mp = described_class.new(:designation => "A")

		mp.is_natural?.should be_false
	end
	
end
