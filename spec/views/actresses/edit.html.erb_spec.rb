require 'spec_helper'

describe "actresses/edit" do
  before(:each) do
    @actress = assign(:actress, stub_model(Actress,
      :actress => "MyString",
      :twitter_url => "MyString"
    ))
  end

  it "renders the edit actress form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", actress_path(@actress), "post" do
      assert_select "input#actress_actress[name=?]", "actress[actress]"
      assert_select "input#actress_twitter_url[name=?]", "actress[twitter_url]"
    end
  end
end
