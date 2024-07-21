class InventoryItem < ApplicationRecord
	validates :name, presence: true
	validates :quantity, presence: true
	validates :location, presence: true

	after_create_commit { broadcast_append_to "inventory_channel" }
	after_update_commit { broadcast_replace_to "inventory_channel" }
	after_destroy_commit { broadcast_remove_to "inventory_channel" }
end
