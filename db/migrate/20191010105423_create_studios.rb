class CreateStudios < ActiveRecord::Migration[5.2]
  def change
    create_table :studios do |t|
      t.string :name
      t.string :details
      t.integer :minimum_booking
      t.string :amenities
      t.string :main_equipment
      t.string :rules
      t.boolean :cancellation_policy
      t.string :address
      t.string :apt_suite_building
      t.decimal :price_per_hour
      t.boolean :audio_engineer_included
      t.references :user
      t.timestamps
    end
  end
end
