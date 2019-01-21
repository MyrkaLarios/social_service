# frozen_string_literal: true

class Students::StudentsApplicationController < ApplicationController
  before_action :authenticate_student!
end
