class AdminsController < ApplicationController
  def index
    @stores = Store.all
  end
end
