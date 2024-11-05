class AddStateToTimers < ActiveRecord::Migration[7.2]
  def change
    add_column :timers, :remaining_time, :integer
    add_column :timers, :is_work_time, :boolean
  end
end
