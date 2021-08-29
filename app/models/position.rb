# frozen_string_literal: true

class Position < ApplicationRecord
  has_one :skill_set, as: :source
  has_many :candidates_positions
  has_many :candidates, through: :candidates_positions

  validates :name, presence: true
  validates :development_type, presence: true
  validates :seniority_level, presence: true
end
