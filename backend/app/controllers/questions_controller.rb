class QuestionsController < ApplicationController

  def index 
    questions = Question.all 
    render json: QuestionSerializer.new(questions)
  end

  def show 
    question = Question.find_by(id: params[:id])
    render json: QuestionSerializer.new(question)
  end
  
end