class CreateShowTimes < ActiveRecord::Migration[5.1]
  def change
    create_table :show_times do |t|
      t.time :time
    end
  end
end
