# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Position do
  it { is_expected.to have_one(:skill_set) }
  it { is_expected.to have_many(:candidates_positions) }
  it { is_expected.to have_many(:candidates).through(:candidates_positions) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:development_type) }
  it { is_expected.to validate_presence_of(:seniority_level) }
end