require 'spec_helper'

describe "NaturalPersons" do
  describe "GET /natural_persons" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get natural_persons_path
      response.status.should be(200)
    end
  end
end
