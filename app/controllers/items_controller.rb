class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      flash[:success] = t("items.item_added")
      redirect_to items_path
    else
      flash[:danger] = t("errors.fix_errors")
      render "items/new"
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :image)
  end
end
