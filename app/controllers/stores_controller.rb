class StoresController < ApplicationController
  before_action :set_store, only: [:show, :edit, :update, :destroy]
  def index
@stores = Store.all
  end
  def show
    
    @items= @store.items
  end

  def edit
  end

  def new
    @store= Store.new
  end

  def create
    @store= Store.new
    if @store.update(store_params)
      redirect_to admins_path
    else
      render :new
    end
end

def edit

end
def update
  if @store.update(store_params)
    redirect_to admins_path
  else
render :edit
  end
end

def destroy
@store.destroy
redirect_to admins_path
end

private

def store_params
  params.require(:store).permit(:name)
end

def set_store
  @store = Store.find(params[:id])
end

end
