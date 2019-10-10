class CreateVerifications < ActiveRecord::Migration[5.2]
  def change
    create_table :verifications do |t|
      t.references :user
      t.datetime :expire_at
      t.integer :kind
      t.string :token
      t.timestamps
    end
  end
end
