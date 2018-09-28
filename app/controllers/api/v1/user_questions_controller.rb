class UserQuestionsController < ApplicationController

  def index
    @userquestions = UserQuestion.all
    render json: @userquestions
  end

  def show
    @userquestion = UserQuestion.find(params[:id])
    render json: @userquestion
  end

end
