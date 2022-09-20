class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.text :name, null: false
      t.references :monthly_target, null: false, foreign_key: true
      t.integer :status, null: false
      t.timestamps
    end
  end
end
