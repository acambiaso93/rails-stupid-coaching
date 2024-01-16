QUESTION_SUCCESS = "I am going to work"
ANSWER_SUCCESS = "Great!"
ANSWER_QUESTION = "Silly question, get dressed and go to work!"
ANSWER_OTHER = "I don't care, get dressed and go to work!"

class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = stupid_coach(@question)
  end

  def stupid_coach(answr)
    if answr == QUESTION_SUCCESS
      ANSWER_SUCCESS
    elsif answr.end_with?('?')
      ANSWER_QUESTION
    else
      ANSWER_OTHER
    end
  end
end
