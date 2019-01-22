# frozen_string_literal: true

# == Schema Information
#
# Table name: options
#
#  id          :bigint(8)        not null, primary key
#  content     :string(255)
#  question_id :bigint(8)
#


class Option < ApplicationRecord
end
