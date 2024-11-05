class CreateTimers < ActiveRecord::Migration[7.2]
  def change
    create_table :timers do |t|
      t.integer :work_duration
      t.integer :break_duration
      t.datetime :work_or_break
      t.datetime :start_time
      t.datetime :end_time
      t.integer :status
      t.integer :sum_time

      t.timestamps
    end
  end
end
