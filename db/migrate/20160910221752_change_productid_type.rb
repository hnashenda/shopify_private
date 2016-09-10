class ChangeProductidType < ActiveRecord::Migration
  def change
    change_column :products, :shopify_product_id, :bigint
  end
end
