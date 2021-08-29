# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CreateCandidates do
  subject { described_class.new(params).call }

  let(:params) do
    {
      name: 'Liam',
      surname: 'Lama',
      email: 'l.lama@mail.com',
      development_type: 'Backend',
      seniority_level: 'Senior'
    }
  end

  it 'creates new Position' do
    expect(Candidate).to receive(:new).and_return(an_object_having_attributes(params))
    subject
  end

  it 'creates new SkillSet' do
    expect { subject }.to change { SkillSet.where(source: ) }.from
  end
end
