class CreateStudioTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :studio_types do |t|
      t.string :name
      t.references :studio
      t.timestamps
    end
  end
end
