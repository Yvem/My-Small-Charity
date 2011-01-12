require "spec_helper"

describe SocietiesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/societies" }.should route_to(:controller => "societies", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/societies/new" }.should route_to(:controller => "societies", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/societies/1" }.should route_to(:controller => "societies", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/societies/1/edit" }.should route_to(:controller => "societies", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/societies" }.should route_to(:controller => "societies", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/societies/1" }.should route_to(:controller => "societies", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/societies/1" }.should route_to(:controller => "societies", :action => "destroy", :id => "1")
    end

  end
end
