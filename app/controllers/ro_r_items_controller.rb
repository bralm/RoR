class RoRItemsController < ApplicationController
  before_action :set_ro_r_list
  def create
    @ro_r_item = @ro_r_list.ro_r_items.create(ro_r_item_params)
    redirect_to @ro_r_list
  end

private

def set_ro_r_list
  @ro_r_list = RoRList.find(params[:ro_r_list_id])
end

def ro_r_item_params
  params[:ro_r_item].permit(:content)
end

end
