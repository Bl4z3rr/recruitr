class CreateJoinTableCandidatePosition < ActiveRecord::Migration[6.1]
  def change
    create_join_table :candidates, :positions do |t|
      t.index :candidate_id
      t.index :position_id
    end
  end
end
