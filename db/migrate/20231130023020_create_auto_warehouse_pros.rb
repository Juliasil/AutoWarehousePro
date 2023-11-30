class CreateAutoWarehousePros < ActiveRecord::Migration[7.0]
  def change
    create_table :auto_warehouse_pros do |t|
      t.string :name
      t.string :code
      t.integer :area
      t.string :city

      t.timestamps
    end
  end
end
