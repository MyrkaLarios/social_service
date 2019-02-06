# frozen_string_literal: true

# == Schema Information
#
# Table name: questions
#
#  id             :bigint(8)        not null, primary key
#  content        :string(255)
#  value          :integer
#  coordinator_id :bigint(8)
#


class Question < ApplicationRecord
  belongs_to :coordinator

  has_many :options, inverse_of: :question

  accepts_nested_attributes_for :options, reject_if: :all_blank, allow_destroy: true
end
