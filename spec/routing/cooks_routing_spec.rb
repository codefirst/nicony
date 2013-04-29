require "spec_helper"

describe CooksController do
  describe "routing" do

    it "routes to #index" do
      get("/cooks").should route_to("cooks#index")
    end

    it "routes to #new" do
      get("/cooks/new").should route_to("cooks#new")
    end

    it "routes to #show" do
      get("/cooks/1").should route_to("cooks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cooks/1/edit").should route_to("cooks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cooks").should route_to("cooks#create")
    end

    it "routes to #update" do
      put("/cooks/1").should route_to("cooks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cooks/1").should route_to("cooks#destroy", :id => "1")
    end

  end
end
