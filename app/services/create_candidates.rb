# frozen_string_literal: true

class CreateCandidates < ApplicationService

  def initialize(params)
    @params = params
  end

  def call
    Candidate.new(params).tap(&:save)
  end

  private

  attr_reader :params
end
