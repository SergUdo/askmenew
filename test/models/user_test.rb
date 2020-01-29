#require 'test_helper'
require "minitest/autorun"

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "Example", username: "Vova", password: "123", email: "user@ex.com")
  end

  test "should be valid" do
    assert_not @user.valid?
  end

  test "email should be present" do
    @user.email = '  '
    assert_not @user.valid?
  end

  test "name should not be too long" do
    @user.name = "a" * 30
    assert_not @user.valid?
  end

  test "email addresses should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end


  test "name should be saved as lower-case" do
    downcase_name = @user.name.downcase
    assert_equal downcase_name, @user.name.downcase
  end

end
