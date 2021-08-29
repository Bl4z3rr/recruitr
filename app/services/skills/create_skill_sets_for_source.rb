# frozen_string_literal: true

module Skills
  class CreateSkillSetsForSource < ApplicationService
    def initialize(source:)
      @source = source
    end

    def call
      SkillSet.new(source_id: source_id, source_type: source_type).save
    end

    private

    attr_reader :source

    def source_id
      source.id
    end

    def source_type
      source.class.name
    end

  end
end
