class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.integer :ma_nganh
      t.string :ten_nganh

      t.timestamps null: false
    end
  end
end
