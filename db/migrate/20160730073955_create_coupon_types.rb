class CreateCouponTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :coupon_types do |t|
      t.string :name
      t.integer :amount
      t.boolean :flag
      t.timestamps
    end
  end
end
