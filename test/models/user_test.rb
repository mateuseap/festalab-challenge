require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(
      name: "Test User",
      email: "test@example.com",
      phone: "81987654321",
      cpf: "68183317006"
    )
  end

  test "should be valid" do
    assert @user.valid?, "User is not valid"
  end

  test "name should be present" do
    @user.name = " "
    assert_not @user.valid?, "Name should be present"
  end

  test "email should be present" do
    @user.email = " "
    assert_not @user.valid?, "Email should be present"
  end

  test "phone should be present" do
    @user.phone = " "
    assert_not @user.valid?, "Phone should be present"
  end

  test "cpf should be present" do
    @user.cpf = " "
    assert_not @user.valid?, "CPF should be present"
  end

  test "email should be valid format" do
    invalid_emails = ["invalid_email", "user@com", "@.com"]
    invalid_emails.each do |email|
      @user.email = email
      assert_not @user.valid?, "#{email.inspect} should be invalid"
    end
  end

  test "phone should be valid format" do
    invalid_phones = ["12345", "12345678901", "abcdefghij"]
    invalid_phones.each do |phone|
      @user.phone = phone
      assert_not @user.valid?, "#{phone.inspect} should be invalid"
    end
  end

  test "cpf should be valid format" do
    invalid_cpfs = ["123.45", "123456789012", "abcdefghi"]
    invalid_cpfs.each do |cpf|
      @user.cpf = cpf
      assert_not @user.valid?, "#{cpf.inspect} should be invalid"
    end
  end
end
