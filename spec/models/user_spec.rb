require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できるとき' do
      it "nicknameとemailとpasswodとbirthdayとlast_nameとfirst_nameとlast_name_kanaとfirst_name_kanaが存在すれば登録できる" do
        expect(@user).to be_valid
      end
    end

    context '新規登録できないとき' do
      it "nicknameが空の場合登録できない" do
        @user.nickname = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end

      it "emailが空の場合登録できない" do
        @user.email = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end

      it "重複したemailが存在する場合登録できない" do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include("Email has already been taken")
      end

      #it "emailが@を含まない場合登録できない" do
        #@user.email = "aa.com"
        #@user.valid?
        #expect(@user.errors.full_messages).to include("")
      #end

      it "passwordが空の場合登録できない" do
        @user.password = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end

      it "passwodが5文字以下の場合登録できない" do
        @user.password = "00000"
        @user.password_confirmation = "00000"
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
      end

      it "passwordが半角英数字混合でなければ場合登録できない" do
        @user.password = "000000"
        @user.valid?
        #binding.pry
        expect(@user.errors.full_messages).to include("Password is invalid")
      end

      it "passwordが存在してもpassword_confirmationが空では登録できない" do
        @user.password_confirmation = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end

      it "passwodとpassword_confirmationが一致していないと登録できない" do
        @user.password = "000000a"
        @user.password_confirmation = "111111a"
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
    end
  end
end
