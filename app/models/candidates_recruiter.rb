# frozen_string_literal: true

class CandidatesRecruiter < ApplicationRecord
  belongs_to :candidate
  belongs_to :recruiter
end
