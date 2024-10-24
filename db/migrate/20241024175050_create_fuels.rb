class CreateFuels < ActiveRecord::Migration[7.2]
  def change
    create_table :fuels do |t|
      t.string :name
      t.float :refund_factor_percentage
      t.float :minimum_receipt_value_percentage

      t.timestamps
    end
  end
end
