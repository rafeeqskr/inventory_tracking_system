class InventoryItem < ApplicationRecord
	after_create_commit { broadcast_prepend_to "inventory_items", partial: "inventory_items/inventory_item", locals: { inventory_item: self } }
	after_update_commit { broadcast_replace_to "inventory_channel" }
end
