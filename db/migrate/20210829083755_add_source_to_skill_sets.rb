class AddSourceToSkillSets < ActiveRecord::Migration[6.1]
  def change
    add_reference :skill_sets, :source, polymorphic: true, index: true
  end
end
