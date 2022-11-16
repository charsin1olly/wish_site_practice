class WishListController < ApplicationController

  def home
  end

  def new_wish

  end

  def create_wish
    redirect_to wish_list_path , notice: "成功～"

  end
end
