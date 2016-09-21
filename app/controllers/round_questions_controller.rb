class RoundQuestionsController < ApplicationController
  before_action :set_round_question, only: [:show, :edit, :update, :destroy]

  # GET /round_questions
  # GET /round_questions.json
  def index
    @round_questions = RoundQuestion.all
  end

  # GET /round_questions/1
  # GET /round_questions/1.json
  def show
  end

  # GET /round_questions/new
  def new
    @round_question = RoundQuestion.new
  end

  # GET /round_questions/1/edit
  def edit
  end

  # POST /round_questions
  # POST /round_questions.json
  def create
    @round_question = RoundQuestion.new(round_question_params)

    respond_to do |format|
      if @round_question.save
        format.html { redirect_to @round_question, notice: 'Round question was successfully created.' }
        format.json { render :show, status: :created, location: @round_question }
      else
        format.html { render :new }
        format.json { render json: @round_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /round_questions/1
  # PATCH/PUT /round_questions/1.json
  def update
    respond_to do |format|
      if @round_question.update(round_question_params)
        format.html { redirect_to @round_question, notice: 'Round question was successfully updated.' }
        format.json { render :show, status: :ok, location: @round_question }
      else
        format.html { render :edit }
        format.json { render json: @round_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /round_questions/1
  # DELETE /round_questions/1.json
  def destroy
    @round_question.destroy
    respond_to do |format|
      format.html { redirect_to round_questions_url, notice: 'Round question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_round_question
      @round_question = RoundQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def round_question_params
      params.require(:round_question).permit(:round_id, :question_id)
    end
end
