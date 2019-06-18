class AnswersController < ApplicationController 

  def index 
    answers = Answer.all
    render json: AnswerSerializer.new(answers)
  end

  def show 
    answer = Answer.find_by(id: params[:id])
    render json: AnswerSerializer.new(answer)
  end
  
end