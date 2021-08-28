# frozen_string_literal: true

class SkillSet < ApplicationRecord
  has_many :skills
  belongs_to :candidate
  belongs_to :position
  belongs_to :recruiter
end
