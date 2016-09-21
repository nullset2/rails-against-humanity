require 'test_helper'

class RoundQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @round_question = round_questions(:one)
  end

  test "should get index" do
    get round_questions_url
    assert_response :success
  end

  test "should get new" do
    get new_round_question_url
    assert_response :success
  end

  test "should create round_question" do
    assert_difference('RoundQuestion.count') do
      post round_questions_url, params: { round_question: { question_id: @round_question.question_id, round_id: @round_question.round_id } }
    end

    assert_redirected_to round_question_url(RoundQuestion.last)
  end

  test "should show round_question" do
    get round_question_url(@round_question)
    assert_response :success
  end

  test "should get edit" do
    get edit_round_question_url(@round_question)
    assert_response :success
  end

  test "should update round_question" do
    patch round_question_url(@round_question), params: { round_question: { question_id: @round_question.question_id, round_id: @round_question.round_id } }
    assert_redirected_to round_question_url(@round_question)
  end

  test "should destroy round_question" do
    assert_difference('RoundQuestion.count', -1) do
      delete round_question_url(@round_question)
    end

    assert_redirected_to round_questions_url
  end
end
