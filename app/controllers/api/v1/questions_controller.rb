class Api::V1::QuestionsController < ApplicationController
  def create
    user = User.first
    question = Question.new(strong_params)
    if question.valid?
      render json: {message: 'success' }, status: :created
    else
      render json: {message: question.errors.messages }, status: :unprocessable_entity
    end
  end

  private

  def strong_params
    att_create = %i[title private user_id]
    params.require(:question).permit(att_create)
  end
end
