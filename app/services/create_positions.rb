# frozen_string_literal: true

class CreatePositions < ApplicationService
  def initialize(params:)
    @params = params
  end

  def call
    position = Position.new(params).tap(&:save)

    create_skill_set(position)

    position
  end

  private

  attr_reader :params

  def create_skill_set(position)
    Skills::CreateSkillSetsForSource.call(source: position)
  end
end
