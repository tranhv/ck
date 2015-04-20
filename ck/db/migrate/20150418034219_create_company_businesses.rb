class CreateCompanyBusinesses < ActiveRecord::Migration
  def change
    create_table :company_businesses do |t|
      t.string :ma_ck
      t.integer :ma_nganh
      
      t.timestamps null: false
    end
  end
end
