class ChangeVariantidType < ActiveRecord::Migration
  def change
     change_column :variants, :shopify_variant_id, :bigint
  end
end
