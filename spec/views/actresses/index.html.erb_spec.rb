require 'spec_helper'

describe "actresses/index" do
  before(:each) do
    assign(:actresses, [
      stub_model(Actress,
        :actress => "Actress",
        :twitter_url => "Twitter Url"
      ),
      stub_model(Actress,
        :actress => "Actress",
        :twitter_url => "Twitter Url"
      )
    ])
  end

  it "renders a list of actresses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Actress".to_s, :count => 2
    assert_select "tr>td", :text => "Twitter Url".to_s, :count => 2
  end
end
