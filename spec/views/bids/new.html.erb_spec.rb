require 'rails_helper'

RSpec.describe "bids/new", type: :view do
  before(:each) do
    assign(:bid, Bid.new(
      item: nil,
      user: nil,
      amount_cents: 1
    ))
  end

  it "renders new bid form" do
    render

    assert_select "form[action=?][method=?]", bids_path, "post" do

      assert_select "input[name=?]", "bid[item_id]"

      assert_select "input[name=?]", "bid[user_id]"

      assert_select "input[name=?]", "bid[amount_cents]"
    end
  end
end
