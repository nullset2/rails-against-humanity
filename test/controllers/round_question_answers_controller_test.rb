require 'test_helper'

class RoundQuestionAnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @round_question_answer = round_question_answers(:one)
  end

  test "should get index" do
    get round_question_answers_url
    assert_response :success
  end

  test "should get new" do
    get new_round_question_answer_url
    assert_response :success
  end

  test "should create round_question_answer" do
    assert_difference('RoundQuestionAnswer.count') do
      post round_question_answers_url, params: { round_question_answer: { round_question_id: @round_question_answer.round_question_id, user_id: @round_question_answer.user_id } }
    end

    assert_redirected_to round_question_answer_url(RoundQuestionAnswer.last)
  end

  test "should show round_question_answer" do
    get round_question_answer_url(@round_question_answer)
    assert_response :success
  end

  test "should get edit" do
    get edit_round_question_answer_url(@round_question_answer)
    assert_response :success
  end

  test "should update round_question_answer" do
    patch round_question_answer_url(@round_question_answer), params: { round_question_answer: { round_question_id: @round_question_answer.round_question_id, user_id: @round_question_answer.user_id } }
    assert_redirected_to round_question_answer_url(@round_question_answer)
  end

  test "should destroy round_question_answer" do
    assert_difference('RoundQuestionAnswer.count', -1) do
      delete round_question_answer_url(@round_question_answer)
    end

    assert_redirected_to round_question_answers_url
  end
end
