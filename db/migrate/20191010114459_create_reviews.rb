class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :description
      t.integer :rating
      t.references :reviewer, polymorphic: true
      t.references :user
      t.boolean :verified
      t.timestamps
    end
  end
end
