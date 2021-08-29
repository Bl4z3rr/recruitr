# frozen_string_literal: true

module Skills
  class AssignSkillsToSkillSets < ApplicationService

    def initialize(skills:, skill_set:)
      @skills = skills
      @skill_set = skill_set
    end

    def call
      return unless skill_set_empty?

      assign_skills_to_skill_set
    end

    private

    attr_reader :skill_set
    attr_accessor :skills

    def skill_set_empty?
      Skill.where(skill_set: skill_set).empty?
    end

    def assign_skills_to_skill_set
      skills.each { |skill| skill.update(skill_set_id: skill_set.id) }
    end

  end
end
