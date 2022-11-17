class WishListController < ApplicationController

  def home
    @new_wishes=NewWish.all
  end

  def new_wish
    @new_wish = NewWish.new()
  end

  def create_wish
    clean_params = params.require(:new_wish).permit( :title , :content)
    @new_wish = NewWish.new(clean_params)


    if @new_wish.save
      redirect_to wish_list_path , notice: "成功～"
    else
      render :new_wish
    end
  end
end
