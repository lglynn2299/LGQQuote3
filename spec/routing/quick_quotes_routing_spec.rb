require "spec_helper"

describe QuickQuotesController do
  describe "routing" do

    it "routes to #index" do
      get("/quick_quotes").should route_to("quick_quotes#index")
    end

    it "routes to #new" do
      get("/quick_quotes/new").should route_to("quick_quotes#new")
    end

    it "routes to #show" do
      get("/quick_quotes/1").should route_to("quick_quotes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/quick_quotes/1/edit").should route_to("quick_quotes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/quick_quotes").should route_to("quick_quotes#create")
    end

    it "routes to #update" do
      put("/quick_quotes/1").should route_to("quick_quotes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/quick_quotes/1").should route_to("quick_quotes#destroy", :id => "1")
    end

  end
end
