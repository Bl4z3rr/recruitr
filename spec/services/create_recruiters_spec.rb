# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CreateRecruiters do
  subject { described_class.new(params: params).call }

  let(:params) do
    {
      name: 'Danny',
      surname: 'Ocean',
      email: 'ocean@mail.com',
      development_type: 'Devops'
    }
  end

  it 'creates new Recruiter' do
    expect { subject }.to change(Recruiter, :count).from(0).to(1)
  end

  it 'creates new SkillSet' do
    expect { subject }.to change { SkillSet.where(source: Recruiter.last).count }.from(0).to(1)
  end
end
