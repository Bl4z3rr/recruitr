class CreateSkillSets < ActiveRecord::Migration[6.1]
  def change
    create_table :skill_sets do |t|
      t.references :position, foreign_key: true
      t.references :candidate, foreign_key: true
      t.references :recruiter, foreign_key: true
      
      t.timestamps
    end
  end
end
