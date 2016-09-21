require 'test_helper'

class PlayerCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player_card = player_cards(:one)
  end

  test "should get index" do
    get player_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_player_card_url
    assert_response :success
  end

  test "should create player_card" do
    assert_difference('PlayerCard.count') do
      post player_cards_url, params: { player_card: { answer_id: @player_card.answer_id, game_id: @player_card.game_id, user_id: @player_card.user_id } }
    end

    assert_redirected_to player_card_url(PlayerCard.last)
  end

  test "should show player_card" do
    get player_card_url(@player_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_player_card_url(@player_card)
    assert_response :success
  end

  test "should update player_card" do
    patch player_card_url(@player_card), params: { player_card: { answer_id: @player_card.answer_id, game_id: @player_card.game_id, user_id: @player_card.user_id } }
    assert_redirected_to player_card_url(@player_card)
  end

  test "should destroy player_card" do
    assert_difference('PlayerCard.count', -1) do
      delete player_card_url(@player_card)
    end

    assert_redirected_to player_cards_url
  end
end
