require 'spec_helper'

describe Actress do
  it "orders by actress first name" do
  	roberts = User.create!(actress: "Julia Roberts")
  	beckinsale = User.create!(actress: "Kate Beckinsale")
    
    expect(Actress.ordered_by_first_name).to eq([roberts, beckinsale])
  end
end
