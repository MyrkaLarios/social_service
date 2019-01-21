class LandingPageController < ApplicationController
  def index
    binding.pry
    @user = current_student || current_coordinator
  end
end