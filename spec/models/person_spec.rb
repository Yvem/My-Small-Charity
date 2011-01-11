require 'spec_helper'

require 'person_spec_shared'


describe Person do

	it_behaves_like "a person object"

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
