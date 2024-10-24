class CreateDestinations < ActiveRecord::Migration[7.2]
  def change
    create_table :destinations do |t|
      t.string :title
      t.float :total_km
      t.float :toll_fee

      t.timestamps
    end
  end
end
