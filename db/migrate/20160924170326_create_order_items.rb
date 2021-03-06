class CreateOrderItems < ActiveRecord::Migration[5.0]
  def change
    create_table :order_items do |t|
      t.string :type
      t.integer :shipping_id
      t.integer :cart_id
      t.integer :tax_id

      t.timestamps
    end
    add_index :order_items, :shipping_id
    add_index :order_items, :cart_id
    add_index :order_items, :tax_id
  end
end
