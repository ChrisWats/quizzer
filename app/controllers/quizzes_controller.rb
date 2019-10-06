class QuizzesController < ApplicationController
  def index
  end

  def riddle
    @quiz = Quiz.order("RANDOM()").first
  end

  def new
    @quiz = Quiz.new
  end

  def create
    @quiz = Quiz.create(quiz_params)
    if @quiz.valid?
      flash[:notice] = 'Thank you for contributing the riddle.' + @quiz.last
    else
      flash[:error] = '<strong>Could not save</strong> data was not valid.'
    end
    redirect_to new_quiz_path
  end

  private

  def quiz_params
    params.require(:quiz).permit(:riddle, :answer)
  end
end
