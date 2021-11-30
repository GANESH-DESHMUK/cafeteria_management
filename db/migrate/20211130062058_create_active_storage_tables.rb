class CreateActiveStorageTables < ActiveRecord::Migration[6.1]
  def change
    create_table :active_storage_tables do |t|
      t.string :key, null: false
      t.string :filename, null: false
      t.string :content_type
      t.text :metadata
      t.string :service_name, null: false
      t.bigint :byte_size, null: false
      t.string :checksum, null: false
      t.datetime :created_at, null: false

      t.index [:key], unique: true
    end
  end
end
