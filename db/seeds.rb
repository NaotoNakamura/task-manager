# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# MonthlyTarget
5.times do |month|
  month += 1
  MonthlyTarget.create(year: 2023, month: month, name: "1つ目の目標")
  MonthlyTarget.create(year: 2023, month: month, name: "2つ目の目標")
end

# AnnualTargets
3.times do |no|
  AnnualTarget.create(year: 2023, name: "#{no + 1}つ目の目標")
end

# Tasks
3.times do |no|
  no += 1
  Task.create(monthly_target_id: no, name: "これは#{no}-1のタスクです", status: 0)
  Task.create(monthly_target_id: no, name: "これは#{no}-2のタスクです", status: 1)
end

# DailyTask
2.times do |no|
  no += 1
  DailyTask.create(task_id: no, name: "これは#{no}-1の日次タスクです", start_date: '2023-01-01', end_date: '2023-01-30', status: 0)
  DailyTask.create(task_id: no, name: "これは#{no}-2の日次タスクです", start_date: '2023-01-01', end_date: '2023-01-30', status: 1)
end

# Gain
2.times do |no|
  no += 1
  Gain.create(monthly_target_id: no, description: "これは#{no}-1の得られることです")
  Gain.create(monthly_target_id: no, description: "これは#{no}-2の得られることです")
end
