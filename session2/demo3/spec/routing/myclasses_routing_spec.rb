require "spec_helper"

describe MyclassesController do
  describe "routing" do

    it "routes to #index" do
      get("/myclasses").should route_to("myclasses#index")
    end

    it "routes to #new" do
      get("/myclasses/new").should route_to("myclasses#new")
    end

    it "routes to #show" do
      get("/myclasses/1").should route_to("myclasses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/myclasses/1/edit").should route_to("myclasses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/myclasses").should route_to("myclasses#create")
    end

    it "routes to #update" do
      put("/myclasses/1").should route_to("myclasses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/myclasses/1").should route_to("myclasses#destroy", :id => "1")
    end

  end
end
