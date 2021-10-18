require 'rails_helper'

RSpec.describe Post, type: :model do

  describe "validations" do
    it "validate presence required fields" do
      should validate_presence_of(:title)
      should validate_presence_of(:content)
      should validate_presence_of(:user_id)
    end
  end

  it "valdates relations" do
    should belong_to(:user)
  end
end
