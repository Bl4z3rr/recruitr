# frozen_string_literal: true

class CreateRecruiters < ApplicationService
  def initialize(params)
    @params = params
  end

  def call
    Recruiter.new(params).tap(&:save)
  end

  private

  attr_reader :params
end
