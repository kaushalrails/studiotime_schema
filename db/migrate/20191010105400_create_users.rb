class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :bio
      t.string :email
      t.datetime :email_verified_at
      t.string :facebook_handle
      t.string :insta_handle
      t.string :twitter_handle
      t.string :first_name
      t.string :last_name
      t.string :mobile_no
      t.datetime :mobile_no_verified_at
      t.string :password_digest
      t.string :stream_url
      t.string :website
      t.timestamps
    end
  end
end
