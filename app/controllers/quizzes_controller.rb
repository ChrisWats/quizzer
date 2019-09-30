class QuizzesController < ApplicationController
  def index
    @quiz = Quiz.order("RANDOM()").first
  end

  def create
    @quiz = Quiz.create(quiz_params)
  end

  private

  def quiz_params
    params.require(:quiz).permit(:answer)
  end
end
