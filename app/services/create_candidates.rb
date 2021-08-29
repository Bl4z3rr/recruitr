# frozen_string_literal: true

class CreateCandidates < ApplicationService
  def initialize(params:)
    @params = params
  end

  def call
    candidate = Candidate.new(params).tap(&:save)

    create_skill_set(candidate)

    candidate
  end

  private

  attr_reader :params

  def create_skill_set(candidate)
    Skills::CreateSkillSetsForSource.call(source: candidate)
  end
end
