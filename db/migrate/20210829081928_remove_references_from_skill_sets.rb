class RemoveReferencesFromSkillSets < ActiveRecord::Migration[6.1]
  def change
    remove_reference :skill_sets, :candidate, foreign_key: true
    remove_reference :skill_sets, :position, foreign_key: true
    remove_reference :skill_sets, :recruiter, foreign_key: true
  end
end
