require 'spec_helper'

describe "API" do

  describe "/products/:id" do

    it "should return the project with the given ID" do
      res = HTTParty.get("#{API_URL}/products/1")
      json = JSON.parse(res.body)
      expect(json["id"]).to eq(1)
    end

  end

end