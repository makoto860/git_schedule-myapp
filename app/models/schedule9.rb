class Schedule9 < ApplicationRecord
  validates :title, presence: true
  validates :first_date, presence: true
  validates :final_date, presence: true


  def final_date_after_today_date
    
    errors.add(:final_date,"は翌日以降の日にちを選択して") if final_date < Date.tomorrow
    
  end
  
end

