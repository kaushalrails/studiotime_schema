class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :dob
      t.string :bsb
      t.string :sort_code
      t.string :routing_number
      t.string :bank_account_number
      t.references :user
      t.timestamps
    end
  end
end
