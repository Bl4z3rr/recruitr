# frozen_string_literal: true

class CreateRecruiters < ApplicationService
  def initialize(params:)
    @params = params
  end

  def call
    recruiter = Recruiter.new(params).tap(&:save)

    create_skill_set(recruiter)

    recruiter
  end

  private

  attr_reader :params

  def create_skill_set(recruiter)
    Skills::CreateSkillSetsForSource.call(source: recruiter)
  end
end
