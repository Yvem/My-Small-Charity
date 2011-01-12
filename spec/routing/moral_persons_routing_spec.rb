require "spec_helper"

describe MoralPersonsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/moral_persons" }.should route_to(:controller => "moral_persons", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/moral_persons/new" }.should route_to(:controller => "moral_persons", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/moral_persons/1" }.should route_to(:controller => "moral_persons", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/moral_persons/1/edit" }.should route_to(:controller => "moral_persons", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/moral_persons" }.should route_to(:controller => "moral_persons", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/moral_persons/1" }.should route_to(:controller => "moral_persons", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/moral_persons/1" }.should route_to(:controller => "moral_persons", :action => "destroy", :id => "1")
    end

  end
end
