require "spec_helper"

describe PersonsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/persons" }.should route_to(:controller => "persons", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/persons/new" }.should route_to(:controller => "persons", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/persons/1" }.should route_to(:controller => "persons", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/persons/1/edit" }.should route_to(:controller => "persons", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/persons" }.should route_to(:controller => "persons", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/persons/1" }.should route_to(:controller => "persons", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/persons/1" }.should route_to(:controller => "persons", :action => "destroy", :id => "1")
    end

  end
end
