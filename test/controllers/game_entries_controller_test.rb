require 'test_helper'

class GameEntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_entry = game_entries(:one)
  end

  test "should get index" do
    get game_entries_url
    assert_response :success
  end

  test "should get new" do
    get new_game_entry_url
    assert_response :success
  end

  test "should create game_entry" do
    assert_difference('GameEntry.count') do
      post game_entries_url, params: { game_entry: { game_id: @game_entry.game_id, user_id: @game_entry.user_id } }
    end

    assert_redirected_to game_entry_url(GameEntry.last)
  end

  test "should show game_entry" do
    get game_entry_url(@game_entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_game_entry_url(@game_entry)
    assert_response :success
  end

  test "should update game_entry" do
    patch game_entry_url(@game_entry), params: { game_entry: { game_id: @game_entry.game_id, user_id: @game_entry.user_id } }
    assert_redirected_to game_entry_url(@game_entry)
  end

  test "should destroy game_entry" do
    assert_difference('GameEntry.count', -1) do
      delete game_entry_url(@game_entry)
    end

    assert_redirected_to game_entries_url
  end
end
