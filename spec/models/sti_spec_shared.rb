require 'spec_helper'


shared_examples_for "a non-abstract STI object" do

	before(:each) do
		@valid_default_attrs = the_valid_default_attrs
	end

	# this is not really a test, this is a reminder !
	# because "ActiveRecord" objects behave very differently than normal objects
	# that should be taken in account in testing this class
	it { should be_kind_of(ActiveRecord::Base) }
	
	it "is not abstract" do
		described_class.create!( @valid_default_attrs )
	end
	
	it "should prevent access to the 'type' attribute" do
		o = described_class.create!( @valid_default_attrs )
		o.type = "toto"
		fail
	end
	
	it "should prevent access to unknown properties" do
		o = described_class.create!( @valid_default_attrs )
		o.respond_to?(:azerty).should be_false
	end
	
end
