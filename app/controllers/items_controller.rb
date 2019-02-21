class ItemsController < ApplicationController
  before_action :set_store
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  
  def index
@items = @store.items

  end

  def new
    @item = @store.items.new
    
  end

  def create
    @item= @store.items.new(item_params)
    if @item.save
      redirect_to admins_path
    else
      render :new
    end
end

def edit

end
def update
  if @item.update(item_params)
    redirect_to admins_path
  else
render :edit
  end
end

def destroy
@item.destroy
redirect_to admins_path
end

private

def store_params
  params.require(:store).permit(:name)
end

def set_store
  @store = Store.find(params[:store_id])
end

def item_params
  params.require(:item).permit(:name, :price)
end

def set_item
  @item = Item.find(params[:id])
end
end
