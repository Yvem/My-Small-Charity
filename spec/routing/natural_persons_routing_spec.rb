require "spec_helper"

describe NaturalPersonsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/natural_persons" }.should route_to(:controller => "natural_persons", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/natural_persons/new" }.should route_to(:controller => "natural_persons", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/natural_persons/1" }.should route_to(:controller => "natural_persons", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/natural_persons/1/edit" }.should route_to(:controller => "natural_persons", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/natural_persons" }.should route_to(:controller => "natural_persons", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/natural_persons/1" }.should route_to(:controller => "natural_persons", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/natural_persons/1" }.should route_to(:controller => "natural_persons", :action => "destroy", :id => "1")
    end

  end
end
