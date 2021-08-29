# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SkillSet do
  it { is_expected.to have_many(:skills) }
  it { is_expected.to belong_to(:source) }
end
