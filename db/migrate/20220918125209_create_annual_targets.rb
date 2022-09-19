class CreateAnnualTargets < ActiveRecord::Migration[6.1]
  def change
    create_table :annual_targets do |t|
      t.text :name, null: false
      t.string :year, null: false
      t.timestamps
    end
  end
end
