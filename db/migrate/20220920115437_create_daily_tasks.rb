class CreateDailyTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :daily_tasks do |t|
      t.references :task, foreign_key: true
      t.text :name, null: false
      t.date :start_date
      t.date :end_date
      t.integer :status, null: false
      t.timestamps
    end
  end
end
