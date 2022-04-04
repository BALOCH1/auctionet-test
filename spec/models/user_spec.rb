require "rails_helper"

RSpec.describe User, type: :model do
  describe "associations" do
    it { should belong_to(:currency).class_name("Currency") }
  end
end
