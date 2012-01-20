require 'spec_helper'

describe WebApp do
  def app
    @app ||= WebApp
  end

  describe "GET '/'" do
    it "should be successful" do
      get '/'
      last_response.should be_ok
      last_response.body.should == 'Hello World'
    end
  end
end
