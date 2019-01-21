# frozen_string_literal: true

class Coordinators::CoordinatorsApplicationController < ApplicationController
  before_action :authenticate_coordinator!
end
