class CreateDiscounts < ActiveRecord::Migration[6.1]
  def change
    create_table :discounts do |t|
      t.string :rank
      t.string :code
      t.integer :discount
      t.datetime :expiry_date

      t.timestamps
    end
  end
end
