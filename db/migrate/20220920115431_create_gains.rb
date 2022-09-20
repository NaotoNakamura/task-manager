class CreateGains < ActiveRecord::Migration[6.1]
  def change
    create_table :gains do |t|
      t.references :monthly_target, null: false, foreign_key: true
      t.text :description, null: false
      t.timestamps
    end
  end
end
