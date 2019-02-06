# frozen_string_literal: true

class Coordinators::QuestionsController < Coordinators::CoordinatorsApplicationController
  def new
    @question = Question.new
    3.times { @question.options.new }
  end

  def create
    binding.pry
  end

  private

    def question_params
      params.require(:question).permit(:content, options_attributes: [:id, :content, :_destroy])
    end
end
