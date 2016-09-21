class RoundQuestionAnswersController < ApplicationController
  before_action :set_round_question_answer, only: [:show, :edit, :update, :destroy]

  # GET /round_question_answers
  # GET /round_question_answers.json
  def index
    @round_question_answers = RoundQuestionAnswer.all
  end

  # GET /round_question_answers/1
  # GET /round_question_answers/1.json
  def show
  end

  # GET /round_question_answers/new
  def new
    @round_question_answer = RoundQuestionAnswer.new
  end

  # GET /round_question_answers/1/edit
  def edit
  end

  # POST /round_question_answers
  # POST /round_question_answers.json
  def create
    @round_question_answer = RoundQuestionAnswer.new(round_question_answer_params)

    respond_to do |format|
      if @round_question_answer.save
        format.html { redirect_to @round_question_answer, notice: 'Round question answer was successfully created.' }
        format.json { render :show, status: :created, location: @round_question_answer }
      else
        format.html { render :new }
        format.json { render json: @round_question_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /round_question_answers/1
  # PATCH/PUT /round_question_answers/1.json
  def update
    respond_to do |format|
      if @round_question_answer.update(round_question_answer_params)
        format.html { redirect_to @round_question_answer, notice: 'Round question answer was successfully updated.' }
        format.json { render :show, status: :ok, location: @round_question_answer }
      else
        format.html { render :edit }
        format.json { render json: @round_question_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /round_question_answers/1
  # DELETE /round_question_answers/1.json
  def destroy
    @round_question_answer.destroy
    respond_to do |format|
      format.html { redirect_to round_question_answers_url, notice: 'Round question answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_round_question_answer
      @round_question_answer = RoundQuestionAnswer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def round_question_answer_params
      params.require(:round_question_answer).permit(:round_question_id, :user_id)
    end
end
