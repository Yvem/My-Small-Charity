require 'spec_helper'


shared_examples_for "a person object" do

	before(:each) do
		@default_valid_creation_params = { :designation => "Toto" }
		if (defined? subclass_additional_valid_inits) then
			@default_valid_creation_params.merge(subclass_additional_valid_inits)
		end
	end

	# this is not really a test, this is a reminder !
	# because "ActiveRecord" objects behave very differently than normal objects
	# that should be taken in account in testing this class
	it { should be_kind_of(ActiveRecord::Base) }
	
	it "should create a new instance given valid attributes" do
		described_class.create!(@default_valid_creation_params)
	end

	it "should always have a designation" do
		# no designation provided (bad !)
		p = described_class.new

		# object should be invalid
		p.valid?.should be_false

		# one error should be related to the designation
		p.errors.should include(:designation)

		# and the designation error should inlude "can't be blank"
		p.errors[:designation].should include("can't be blank")
		p.errors[:designation].should eq(["can't be blank", "is too short (minimum is 1 characters)"]) # no more, no less
	end

	it "should ensure that designation is > 1 char" do
		# blank designation provided (bad !)
		p = described_class.new(:designation => "")

		# object should be invalid
		p.valid?.should be_false

		# one error should be related to the designation
		p.errors.should include(:designation)

		# and the designation error should include "is too short (minimum is 1 characters)"
		p.errors[:designation].should include("is too short (minimum is 1 characters)")
		p.errors[:designation].should eq(["can't be blank", "is too short (minimum is 1 characters)"]) # no more, no less

		# and now, limit test
		p = described_class.new(:designation => "a")

		# can be OK or not OK, but no error should be related to the designation
		p.valid? # to trigger the validation
		p.errors.should_not include(:designation)
	end

	it "should ensure that designation is <= 70 char" do
		# 70 chars = OK (limit)
		p = described_class.new(:designation => "1111111111222222222233333333334444444444555555555566666666667777777777")

		# can be OK or not OK, but no error should be related to the designation
		p.valid? # to trigger the validation
		p.errors.should_not include(:designation)

		# 71 chars = too much !
		p = described_class.new(:designation => "11111111112222222222333333333344444444445555555555666666666677777777778")

		# object should be invalid
		p.valid?.should be_false

		# one error should be related to the designation
		p.errors.should include(:designation)

		# and the designation error should inlude "is too long (maximum is 70 characters)"
		p.errors[:designation].should include("is too long (maximum is 70 characters)")
		p.errors[:designation].should eq(["is too long (maximum is 70 characters)"]) # no more, no less
	end
	
	it "should ensure that designation is unique"
	
	it "should prevent messing with STI"

end
