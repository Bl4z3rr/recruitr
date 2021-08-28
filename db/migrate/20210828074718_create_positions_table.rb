class CreatePositionsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :positions do |t|
      t.string :name, null: false
      t.text :description
      t.string :type, null: false
      t.string :seniority_level, null: false
      t.timestamps
    end
  end
end
