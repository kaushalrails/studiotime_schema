class CreateSlots < ActiveRecord::Migration[5.2]
  def change
    create_table :slots do |t|
      t.references :booking
      t.time :from
      t.time :to
      t.date :date
      t.timestamps
    end
  end
end
