class TimersController < ApplicationController
  def top
    @timer = Timer.first_or_initialize
    @timer.status = 0 if @timer.new_record? || @timer.status.nil?
    @timer.save if @timer.new_record?
  end

  def change
    add_column :timers, :status, :string, default: "work"
  end

  def reset
    @timer = Timer.first_or_create(work_duration: 25, break_duration: 5)
    @timer.update(status: "work", work_duration: 25 * 60) # 25分にリセット
  end
end
