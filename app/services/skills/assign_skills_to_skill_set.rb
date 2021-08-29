# frozen_string_literal: true

class AssignSkillsToSkillSet < ApplicationService

  def initialize(params)
    @params = params
  end

  def call
    
  end

  private

  attr_reader :params

  def skills
    params
  end

end
