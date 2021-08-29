# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CreatePositions do
  subject { described_class.new(params).call }

  let(:params) do
    {
      name: 'Senior Ruby Developer',
      description: 'Very nice Senior Ruby Developer needed',
      development_type: 'Backend',
      seniority_level: 'Senior'
    }
  end

  it 'creates new Position' do
    expect(Position).to receive(:new).and_return(an_object_having_attributes(params))
    subject
  end
end
