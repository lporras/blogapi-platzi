require 'rails_helper'

RSpec.describe User, type: :model do

  describe "validations" do
    it "validates presence required fields" do
      should validate_presence_of(:name)
      should validate_presence_of(:email)
      should validate_presence_of(:auth_token)
    end

    it "valdates relations" do
      should have_many(:posts)
    end
  end
end
