# frozen_string_literal: true

class Candidate < ApplicationRecord
  has_one :skill_set, as: :source
  has_many :candidates_positions
  has_many :positions, through: :candidates_positions
  has_many :candidates_recruiters
  has_many :recruiters, through: :candidates_recruiters

  validates :name, presence: true
  validates :surname, presence: true
  validates :email, presence: true
  validates :development_type, presence: true
  validates :seniority_level, presence: true
end
