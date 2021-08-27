class CreateHrRepresentatives < ActiveRecord::Migration[6.1]
  def change
    create_table :hr_representatives do |t|
      t.string :name, null: false
      t.string :surname, null: false
      t.string :email, null: false

      t.timestamps null: false
    end
  end
end
