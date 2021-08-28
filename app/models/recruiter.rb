# frozen_string_literal: true

class Recruiter < ApplicationRecord
  
  has_one :skill_set
  has_many :candidates_recruiters
  has_many :candidates, through: :candidates_recruiters  

  validates :name, presence: true
  validates :surname, presence: true
  validates :email, presence: true
  validates :development_type, presence: true
end
