# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Skills::CreateSkillSetsForSource do
  subject { described_class.new(source: source).call }

  context 'when source is Candidate' do
    let(:candidate) { create :candidate }
    let(:source) { candidate }
    let(:source_type) { source.class.name }

    it 'creates SkillSet for Candidate' do
      expect { subject }.to change { SkillSet.all }.from([]).to(a_collection_containing_exactly(
                                                                  an_object_having_attributes(source_id: source.id,
                                                                                              source_type: source_type)
                                                                ))
    end
  end

  context 'when source is Recruiter' do
    let(:recruiter) { create :recruiter }
    let(:source) { recruiter }
    let(:source_type) { source.class.name }

    it 'creates SkillSet for Candidate' do
      expect { subject }.to change { SkillSet.all }.from([]).to(a_collection_containing_exactly(
                                                                  an_object_having_attributes(source_id: source.id,
                                                                                              source_type: source_type)
                                                                ))
    end
  end

  context 'when source is Position' do
    let(:position) { create :position }
    let(:source) { position }
    let(:source_type) { source.class.name }

    it 'creates SkillSet for Candidate' do
      expect { subject }.to change { SkillSet.all }.from([]).to(a_collection_containing_exactly(
                                                                  an_object_having_attributes(source_id: source.id,
                                                                                              source_type: source_type)
                                                                ))
    end
  end
end
