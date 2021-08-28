# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Skill do
  it { is_expected.to belong_to(:skill_set) }
  it { is_expected.to validate_presence_of(:name) }
end
