# frozen_string_literal: true

class Skill < ApplicationRecord
  belongs_to :skill_set, optional: true

  validates :name, presence: true
end
