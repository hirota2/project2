class Timer < ApplicationRecord
  enum status: { 作業前: 0, 作業中: 1, 休憩中: 2 }
end
