# frozen_string_literal: true

class Skill < ApplicationRecord
  belongs_to :skill_set

  validates :name, presence: true
end
