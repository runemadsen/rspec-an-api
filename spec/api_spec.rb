require 'spec_helper'

describe "API" do

  describe "/products/:id" do

    it "should return the project with the given ID" do
      res = HTTParty.get("#{API_URL}/products/1")
      json = JSON.parse(res.body)
      expect(json["id"]).to eq(1)
    end

  end

  describe "POST /products" do
     
    it "should save and return with message" do
      res = HTTParty.post("#{API_URL}/products")
      json = JSON.parse(res.body)
      expect(json["message"]).to eq("ok")
    end
    
  end

end