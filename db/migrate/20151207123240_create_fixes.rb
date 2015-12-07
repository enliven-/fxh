class CreateFixes < ActiveRecord::Migration
  def change
    create_table :fixes do |t|
      t.integer :customer_id
      t.integer :address_id
      t.integer :category_id

      t.timestamps
    end
  end
end
