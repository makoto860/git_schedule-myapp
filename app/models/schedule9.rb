class Schedule9 < ApplicationRecord
  validates :title, presence: true
  validates :first_date, presence: true
  validates :final_date, presence: true

  validate :final_date_after_today

  def final_date_after_today
    if final_date == nil
      errors.add(:final_date,"は翌日以降の日にちを選択して") 
    elsif final_date < Date.tomorrow
      errors.add(:final_date,"は翌日以降の日にちを選択して") 
    else
      "新規登録完了処理"
    end
  end
  
end

