require 'spec_helper'

describe "actresses/show" do
  before(:each) do
    @actress = assign(:actress, stub_model(Actress,
      :actress => "Actress",
      :twitter_url => "Twitter Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Actress/)
    expect(rendered).to match(/Twitter Url/)
  end
end
