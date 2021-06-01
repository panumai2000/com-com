require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe "ユーザー新規登録" do
    it "nicknameが空だと登録できない" do
      @user.nickname = ''
      @user.valid?
    end
    it "emailが空では登録できない" do
      @user.email = ''
      @user.valid?
    end
  end
end
