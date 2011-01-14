require 'spec_helper'

require 'person_spec_shared'
require 'sti_spec_shared'

describe Society do

	let(:valid_default_attrs) { { :designation => "a", :owner_id => 1 } }

	it_behaves_like "a person object" do
		let(:subclass_additional_default_attrs) { valid_default_attrs }
	end

	it_behaves_like "a non-abstract STI object" do
		let(:the_valid_default_attrs) { valid_default_attrs }
	end

	it { should be_kind_of(MoralPerson) }

end
