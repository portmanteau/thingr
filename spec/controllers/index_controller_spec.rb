require 'spec_helper'

describe IndexController do

  describe "GET 'action'" do
    it "returns http success" do
      get 'action'
      response.should be_success
    end
  end

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

end
