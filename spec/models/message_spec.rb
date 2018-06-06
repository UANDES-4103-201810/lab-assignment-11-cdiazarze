require 'rails_helper'

RSpec.describe Message, type: :model do
  it "test creation" do
    @user = create(:user)
    @message = build(:message)
    expect(@message).to be_valid
  end

  it "test owner" do
    @user = create(:user)
    @message = create(:message, user_id: nil)
    expect(@user2).to_not be_valid
  end

  it "test unique email" do
    @user = create(:user, username: "elmismopo")
    @message = create(:message, user_id: @user.id + 1)
    expect(@user2).to_not be_valid
  end
end