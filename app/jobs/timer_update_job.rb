class TimerUpdateJob < ApplicationJob
  queue_as :default
  
  def perform(timer_id)
    timer = Timer.find(timer_id)
  
    # タイマーの残り時間を1分減らす
    if timer.remaining_time > 0
      timer.update(remaining_time: timer.remaining_time - 60)
      TimerUpdateJob.set(wait: 1.minute).perform_later(timer_id) # 1分後に再度ジョブを実行
    else
      # 作業中と休憩中を切り替え
      timer.update(
        status: timer.is_work_time ? '休憩中' : '作業中',
        remaining_time: timer.is_work_time ? timer.break_duration : timer.work_duration
      )
      TimerUpdateJob.set(wait: 1.minute).perform_later(timer_id) # 切り替え後も1分後に再度ジョブを実行
    end
  end
end