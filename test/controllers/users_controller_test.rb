require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
    @valid_params = {
      name: "Valid User",
      email: "valid@example.com",
      phone: "81987654321",
      cpf: "68183317006"
    }
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user with valid data" do
    assert_difference("User.count") do
      post users_url, params: { user: @valid_params }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should not create user with invalid data" do
    assert_no_difference("User.count") do
      post users_url, params: { user: { name: "Invalid User" } }
    end

    assert_response :unprocessable_entity
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user with valid data" do
    patch user_url(@user), params: { user: @valid_params }
    assert_redirected_to user_url(@user.reload)
  end

  test "should not update user with invalid data" do
    patch user_url(@user), params: { user: { name: "Invalid User" } }
    assert_response :unprocessable_entity
  end

  test "should destroy user" do
    assert_difference("User.count", -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
