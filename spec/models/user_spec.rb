require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    before(:each) do
      @user = User.new do |u|
        u.first_name = 'James'
        u.last_name = 'May'
        u.email = 'test@test.com'
        u.password = 'password'
        u.password_confirmation = 'password'
      end
    end

    it 'is valid with all five required fields' do
      expect(@user).to be_valid
    end

    it 'is not valid without a password' do
      @user.password = nil
      expect(@user).to_not be_valid
    end

    it 'is not valid without a password_confirmation' do
      @user.password_confirmation = nil
      expect(@user).to_not be_valid
    end

    it "is not valid when password and password_confirmation don't match" do
      @user.password = 'password'
      @user.password_confirmation = 'passwords'
      expect(@user).to_not be_valid
    end

    it 'is not valid if email is not unique' do
      @user.save

      user_with_non_unique_email = User.new do |u|
        u.first_name = 'Jane'
        u.last_name = 'Doe'
        u.email = 'test@test.com'
        u.password = 'password'
        u.password_confirmation = 'password'
      end

      user_with_non_unique_email.save

      expect(user_with_non_unique_email.errors[:email].first).to eql("has already been taken")
    end

  end
end