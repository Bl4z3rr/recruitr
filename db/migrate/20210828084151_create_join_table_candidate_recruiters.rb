class CreateJoinTableCandidateRecruiters < ActiveRecord::Migration[6.1]
  def change
    create_join_table :candidates, :recruiters do |t|
      t.index :candidate_id
      t.index :recruiter_id
    end
  end
end
