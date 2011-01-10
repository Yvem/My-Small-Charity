require 'spec_helper'

describe NaturalPerson do

	# this is not really a test, this is a reminder !
	# because "ActiveRecord" objects behave very differently than normal objects
	# that should be taken in account in testing this class
	it { should be_kind_of(ActiveRecord::Base) }

	it { should be_kind_of(Person) }

	it "should not report as a moral person" do
		# normal person
		np = described_class.new(:designation => "A")

		np.is_moral?.should be_false
	end

	it "should report as a natural person" do
		# normal person
		np = described_class.new(:designation => "A")

		np.is_natural?.should be_true
	end

end
