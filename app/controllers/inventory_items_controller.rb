class InventoryItemsController < ApplicationController
  def update
    @inventory_item = InventoryItem.find(params[:id])
    if @inventory_item.update(inventory_item_params)
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to root_path, notice: "Inventory item updated successfully." }
      end
    else
      render :edit
    end
  end

  private

  def inventory_item_params
    params.require(:inventory_item).permit(:quantity)
  end
end
