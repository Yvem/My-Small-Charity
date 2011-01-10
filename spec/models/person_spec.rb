require 'spec_helper'


describe Person do

	# this is not really a test, this is a reminder !
	# because "ActiveRecord" objects behave very differently than normal objects
	# that should be taken in account in testing this class
	it { should be_kind_of(ActiveRecord::Base) }

	it "should always have a designation" do
		# no designation provided (bad !)
		p = described_class.new

		# object should be invalid
		p.valid?.should be_false

		# one error should be related to the designation
		p.errors.should include(:designation)

		# and the designation error should inlude "can't be blank"
		p.errors[:designation].should include("can't be blank")
	end

	it "should ensure that designation is > 1 char" do
		# blank designation provided (bad !)
		p = described_class.new(:designation => "")

		# object should be invalid
		p.valid?.should be_false

		# one error should be related to the designation
		p.errors.should include(:designation)

		# and the designation error should inlude "is too short (minimum is 1 characters)"
		p.errors[:designation].should include("is too short (minimum is 1 characters)")

		# and now, limit test
		p = described_class.new(:designation => "a")

		# should be OK
		p.valid?.should be_true
	end

	it "should ensure that designation is <= 70 char" do
		# 70 chars = OK (limit)
		p = described_class.new(:designation => "1111111111222222222233333333334444444444555555555566666666667777777777")

		# should be OK
		p.valid?.should be_true

		# 71 chars = too much !
		p = described_class.new(:designation => "11111111112222222222333333333344444444445555555555666666666677777777778")

		# object should be invalid
		p.valid?.should be_false

		# one error should be related to the designation
		p.errors.should include(:designation)

		# and the designation error should inlude "is too long (maximum is 70 characters)"
		p.errors[:designation].should include("is too long (maximum is 70 characters)")
	end

	it "should not know if natural" do
		# normal person
		p = described_class.new(:designation => "A")

		expect{
			p.is_natural?
		}
		.to raise_error(RuntimeError)
	end

	it "should not know if moral" do
		# normal person
		p = described_class.new(:designation => "A")

		expect{
			p.is_moral?
		}
		.to raise_error(RuntimeError)
	end

end
