class QuestionsController < ApplicationController
  def index
    @questions = Question.all_questions
  end
end
