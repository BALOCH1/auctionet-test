require "rails_helper"

RSpec.describe Bid, type: :model do
  describe "associations" do
    it { should belong_to(:item).class_name("Item") }
    it { should belong_to(:user).class_name("User") }
  end
end
