# frozen_string_literal: true

class CandidatesPosition < ApplicationRecord
  belongs_to :candidate
  belongs_to :position
end
