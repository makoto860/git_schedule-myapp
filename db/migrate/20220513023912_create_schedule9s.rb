class CreateSchedule9s < ActiveRecord::Migration[6.1]
  def change
    create_table :schedule9s do |t|
      t.string :title
      t.date :first_date
      t.date :final_date
      t.string :all_day
      t.string :schedule_memo

      t.timestamps
    end
  end
end
