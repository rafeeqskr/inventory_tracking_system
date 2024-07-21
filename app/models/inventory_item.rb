class InventoryItem < ApplicationRecord
	after_update_commit { broadcast_replace_to "inventory_channel" }
end
