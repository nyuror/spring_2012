require "spec_helper"

describe PetsController do
  describe "routing" do

    it "routes to #index" do
      get("/pets").should route_to("pets#index")
    end

    it "routes to #new" do
      get("/pets/new").should route_to("pets#new")
    end

    it "routes to #show" do
      get("/pets/1").should route_to("pets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pets/1/edit").should route_to("pets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pets").should route_to("pets#create")
    end

    it "routes to #update" do
      put("/pets/1").should route_to("pets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pets/1").should route_to("pets#destroy", :id => "1")
    end

  end
end
