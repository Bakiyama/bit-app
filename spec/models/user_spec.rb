require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー登録' do
    it "ユーザーの新規登録には、メールアドレスが必須であること" do
      @user.email = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end
    
    it "ユーザーの新規登録には、メールアドレスは一意性である" do
      @user.save
      another_user = FactoryBot.build(:user)
      another_user.email = @user.email
      another_user.valid?
      expect(another_user.errors.full_messages).to include("Email has already been taken")
    end
    
    it "ユーザーの新規登録には、メールアドレスは@を含む必要があること" do
      @user.email = 'testexample'
      @user.valid?
      expect(@user.errors.full_messages).to include("Email is invalid")
    end
    
    it "ユーザーの新規登録には、パスワードが必須であること" do
      @user.password = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end
    
    it "ユーザーの新規登録には、パスワードは6文字以上であること" do
      @user.password = '11111'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
    end
    
    it "ユーザーの新規登録には、パスワードは確認用を含めて2回入力すること" do
      @user.password = '111111'
      @user.password_confirmation != @user.password
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
    
    it "ユーザーの新規登録には、ニックネームが必須であること" do
      @user.nickname = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Nickname can't be blank")
    end
    
    it "必須項目に適切な値を入力すると、ユーザーの新規登録ができること" do
      expect(@user).to be_valid
    end
        
  end
end
