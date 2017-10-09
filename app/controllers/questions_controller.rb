class QuestionsController < ApplicationController
  def ask
  end

  def answer
     @query = params[:query]
     @shit = ""
     if @query.include? '?'
        @shit = "Silly question, get dressed and go to work!"
      elsif @query.include? 'I am going to work right now!'
        @shit = ""
      else
        @shit = "I don't care, get dressed and go to work!"
      end
      return @shit
  end
end
