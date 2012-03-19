class CreateOrderProducts < ActiveRecord::Migration
  def change
    create_table :order_products do |t|
      t.integer :stock_id
      t.integer :order_id
      t.integer :quantity
      t.decimal :price, :precision => 12, :scale => 2
    end
  end
end
