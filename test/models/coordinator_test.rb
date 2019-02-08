# frozen_string_literal: true

# == Schema Information
#
# Table name: coordinators
#
#  id                     :bigint(8)        not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  confirmation_token     :string(255)
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#


require "test_helper"

describe Coordinator do
  let(:coordinator) { Coordinator.new }

  it "must be valid" do
    value(coordinator).must_be :valid?
  end
end
