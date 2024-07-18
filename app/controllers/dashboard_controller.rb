class DashboardController < ApplicationController
  def index
    @inventory_items = InventoryItem.all
  end
end
