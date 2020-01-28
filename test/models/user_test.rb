require 'test_helper'

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
    @user.name = "a" * 300
    assert_not @user.valid?
  end

  test "email addresses should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end

  test "username should be unique" do
    duplicate_user = @user.dup
    duplicate_user.username = @user.username.upcase
    @user.save
    assert_not duplicate_user.valid?
  end

  test "name should be saved as lower-case" do
    downcase_name = @user.name.downcase
    @user.save
    assert_equal downcase_name, @user.name.downcase
  end

  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end
end
