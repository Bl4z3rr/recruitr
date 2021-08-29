# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CreatePositions do
  subject { described_class.new(params: params).call }

  let(:params) do
    {
      name: 'Senior Ruby Developer',
      description: 'Very nice Senior Ruby Developer needed',
      development_type: 'Backend',
      seniority_level: 'Senior'
    }
  end

  it 'creates new Position' do
    expect { subject }.to change(Position, :count).from(0).to(1)
  end

  it 'creates new SkillSet' do
    expect { subject }.to change { SkillSet.where(source: Position.last).count }.from(0).to(1)
  end
end
