# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Recruiter do
  it { is_expected.to have_one(:skill_set) }
  it { is_expected.to have_many(:candidates_recruiters) }
  it { is_expected.to have_many(:candidates).through(:candidates_recruiters) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:surname) }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_presence_of(:development_type) }
end
