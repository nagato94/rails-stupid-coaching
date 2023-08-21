class QuestionsController < ApplicationController

  def ask

  end

  def answer
    @question = params[:question]
    @answer = coach_answer_enhanced(@question)
  end

  def coach_answer(your_message)
    if your_message.include? "?"
      return "Silly question, get dressed and go to work!"
    elsif your_message == "I am going to work right now!"
      return ""
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    if your_message == your_message.upcase
      if your_message.include? "?"
        return "I can feel your motivation! Silly question, get dressed and go to work!"
      elsif your_message == "I am going to work right now!".upcase then ""
      else
        return "I can feel your motivation! I don't care, get dressed and go to work!"
      end
    else
      return coach_answer(your_message)
    end
  end
end
