require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Example", username: "Vova", password: "123", email: "user@ex.com")
  end

  test "should be valid" do
    assert_not @user.valid?
  end

  test "email addresses should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end

  test "name should be saved as lower-case" do
    mixed_case_name = "FootBooList"
    @user.name = mixed_case_name.downcase
    @user.save
    assert_equal mixed_case_name.downcase, @user.name
  end
end
