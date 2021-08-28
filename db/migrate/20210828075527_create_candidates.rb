class CreateCandidates < ActiveRecord::Migration[6.1]
  def change
    create_table :candidates do |t|
      t.string :name, null: false
      t.string :surname, null: false
      t.string :email, null: false
      t.string :development_type, null: false
      t.string :seniority_level, null: false

      t.timestamps
    end
  end
end
