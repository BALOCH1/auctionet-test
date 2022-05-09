require 'rails_helper'

RSpec.describe "bids/index", type: :view do
  before(:each) do
    assign(:bids, [
      Bid.create!(
        item: nil,
        user: nil,
        amount_cents: 2
      ),
      Bid.create!(
        item: nil,
        user: nil,
        amount_cents: 2
      )
    ])
  end

  it "renders a list of bids" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
