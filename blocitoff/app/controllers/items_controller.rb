class ItemsController < ApplicationController
#   layout false
  def toggle
   item = Item.find(params[:item_id])
   item.update_attributes(completed: !item.completed)
   redirect_to dashboard_index_path
  end
end
