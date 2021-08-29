# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CreateRecruiters do
  subject { described_class.new(params).call }

  let(:params) do
    {
      name: 'Danny',
      surname: 'Ocean',
      email: 'ocean@mail.com',
      development_type: 'Devops'
    }
  end

  it 'creates new Position' do
    expect(Recruiter).to receive(:new).and_return(an_object_having_attributes(params))
    subject
  end
end
