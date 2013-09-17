require "spec_helper"

describe StaticController do
  render_views

  context "GET #index" do
    subject do
      get :index, format: "html"
      response
    end

    it { should be_success }
    its(:body){ should match /fika/i }
  end

end
