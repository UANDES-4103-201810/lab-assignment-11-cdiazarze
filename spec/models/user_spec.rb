require 'rails_helper'

RSpec.describe User, type: :model do
  it "test creation" do
    @user= build(:user)
    expect(@user).to be_valid
  end

  it "test unique username" do
    @user = create(:user, email: "user2@email.com")
    @user2 = build(:user)
    expect(@user2).to_not be_valid
  end

  it "test unique email" do
    @user = create(:user, username: "user2")
    @user2 = build(:user)
    expect(@user2).to_not be_valid
  end

  it "test username length" do
    @user = build(:user, email: "usernamelengthmorethan20charachters")
    expect(@user).to_not be_valid
  end

end