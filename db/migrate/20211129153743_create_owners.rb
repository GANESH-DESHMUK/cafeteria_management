class CreateOwners < ActiveRecord::Migration[6.1]
  def change
    create_table :owners do |t|
      t.string "first_name"
      t.string "last_name"
      t.string "email"
      t.bigint "phone_no"
      t.string "password_digest"
      t.string "role"
      t.timestamps
    end
  end
end
