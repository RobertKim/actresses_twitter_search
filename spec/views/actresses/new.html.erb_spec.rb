require 'spec_helper'

describe "actresses/new" do
  before(:each) do
    assign(:actress, stub_model(Actress,
      :actress => "MyString",
      :twitter_url => "MyString"
    ).as_new_record)
  end

  it "renders new actress form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", actresses_path, "post" do
      assert_select "input#actress_actress[name=?]", "actress[actress]"
      assert_select "input#actress_twitter_url[name=?]", "actress[twitter_url]"
    end
  end
end
