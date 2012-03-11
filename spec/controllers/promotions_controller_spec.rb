require 'spec_helper'

describe PromotionsController do

  describe "GET 'image'" do
    it "returns http success" do
      get 'image'
      response.should be_success
    end
  end

end
