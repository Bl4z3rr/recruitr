# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Skills::AssignSkillsToSkillSets do
  subject { described_class.new(skills: skills, skill_set: skill_set).call }

  let(:skills) { [skill1, skill2, skill3] }
  let(:skill1) { create :skill }
  let(:skill2) { create :skill }
  let(:skill3) { create :skill }
  let(:skill_set) { create :skill_set }

  context 'when SkillSet is empty' do
    it 'assings Skills to SkillSet' do
      expect { subject }.to change { Skill.where(skill_set_id: skill_set.id) }.from([]).to(skills)
    end
  end

  context 'when SkillSet already has Skills' do
    let(:skills) { [skill1, skill2, skill3] }
    let(:skill1) { create :skill, skill_set_id: skill_set.id }
    let(:skill2) { create :skill, skill_set_id: skill_set.id }
    let(:skill3) { create :skill, skill_set_id: skill_set.id }

    before { skills }

    it 'doesn not assings Skills to SkillSet' do
      expect { subject }.not_to change { Skill.where(skill_set_id: skill_set.id).count }.from(3)
    end
  end
end
