# frozen_string_literal: true

class Coordinators::QuestionsController < Coordinators::CoordinatorsApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
    3.times { @question.options.new }
  end

  def create
    @question = current_coordinator.questions.create(question_params)
    if @question.persisted?
      redirect_to coordinators_questions_path
    end
  end

  private

    def question_params
      params.require(:question).permit(:content, options_attributes: [:id, :content, :_destroy])
    end
end
