# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CandidatesPosition do
  it { is_expected.to belong_to(:position) }
  it { is_expected.to belong_to(:candidate) }
end