class QuestionController < ApplicationController
  def ask
  end

  def answer
    message = params[:asks]
    @answer = ''
    if message.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif message.eql?('I am going to work right now!')
      @answer = 'yei'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
