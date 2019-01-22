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
end
