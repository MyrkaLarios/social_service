# frozen_string_literal: true

module Accessible
  extend ActiveSupport::Concern
  included do
    before_action :check_user
  end

  protected

    def check_user
      if current_coordinator
        flash.clear
        redirect_to(coordinators_dashboard_index_path) && return
      elsif current_student
        flash.clear
        redirect_to(students_dashboard_index_path) && return
      end
    end
end
