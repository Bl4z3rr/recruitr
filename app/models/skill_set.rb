# frozen_string_literal: true

class SkillSet < ApplicationRecord
  has_many :skills
  belongs_to :source, polymorphic: true
end
