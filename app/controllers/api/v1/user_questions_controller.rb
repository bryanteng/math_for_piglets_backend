class Api::V1::UserQuestionsController < ApplicationController

  def index
    @userquestions = UserQuestion.all
    render json: @userquestions
  end

  def show
    @userquestion = UserQuestion.find(params[:id])
    render json: @userquestion
  end

  def create
    @userquestion = UserQuestion.new(user_question_params)
    if @userquestion.save
      render json: @userquestion, status: :accepted
    else
      render json: {errors: @userquestion.errors.full_messages}, status: :unprocessable_entity
    end
  end


  private
  def user_question_params
    params.require(:user_question).permit(:user_id, :question_id, :answeredCorrectly)
  end

end
