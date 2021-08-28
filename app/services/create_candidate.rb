# frozen_string_literal: true

class CreateCandidate < ApplicationService

  def initialize(params)
    @params = params
  end

  def call
    Candidate.new(params)
  end

  private

  attr_reader :params

end