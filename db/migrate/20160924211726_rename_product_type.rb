class RenameProductType < ActiveRecord::Migration[5.0]
  def change
  	rename_column :products, :product_type, :product_type_id
  end
end
