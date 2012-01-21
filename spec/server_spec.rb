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

  describe "GET /.json" do
    before  { get '/.json' }

    it "should be successful" do
      last_response.should be_ok
    end

    it "returns json" do
      JSON.parse(last_response.body).should == {
        "openstruct" => {
          "greeting" => "Hello"
        }
      }
    end
  end
end
