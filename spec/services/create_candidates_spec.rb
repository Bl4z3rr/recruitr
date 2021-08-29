# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CreateCandidates do
  subject { described_class.new(params: params).call }

  let(:params) do
    {
      name: 'Liam',
      surname: 'Lama',
      email: 'l.lama@mail.com',
      development_type: 'Backend',
      seniority_level: 'Senior'
    }
  end

  it 'creates new Candidate' do
    expect { subject }.to change(Candidate, :count).from(0).to(1)
  end

  it 'creates new SkillSet' do
    expect { subject }.to change { SkillSet.where(source: Candidate.last).count }.from(0).to(1)
  end
end
