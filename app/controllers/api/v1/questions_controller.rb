class Api::V1::QuestionsController < ApplicationController

  def index
    @questions = Question.all
    render json: @questions
  end

  def show
    @question = Question.find(params[:id])
    render json: @question
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      render json: @question, status: :accepted
    else
      render json: {errors: @question.errors.full_messages}, status: :unprocessable_entity
    end
  end


  private
  def question_params
    params.require(:question).permit(:num1, :num2, :operation, :user_id)
  end



end
