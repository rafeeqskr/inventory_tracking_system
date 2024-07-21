class InventoryItemsController < ApplicationController
  def update
    @inventory_item = InventoryItem.find(params[:id])
    if @inventory_item.update(inventory_item_params)
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to root_path, notice: "Inventory item updated successfully." }
      end
    else
      respond_to do |format|
        format.turbo_stream { render turbo_stream: turbo_stream.replace(@inventory_item, partial: 'inventory_item', locals: { error_message: @inventory_item.errors.full_messages.join(), inventory_item: @inventory_item.reload }) }
        format.html { render :edit }
      end
    end
  end

  private

  def inventory_item_params
    params.require(:inventory_item).permit(:quantity)
  end
end
