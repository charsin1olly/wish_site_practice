class WishListsController < ApplicationController

  def index
    @new_wishes=NewWish.all
  end

  def new
    @new_wish = NewWish.new()

  end

  def create
    @new_wish = NewWish.new(clean_wish_params)


    if @new_wish.save
      redirect_to wish_lists_path , notice: "成功～"
    else
      render :new
    end
  end

  def show
    find()
  end

  private
  def clean_wish_params
    params.require(:new_wish).permit( :title , :content)
  end 


end
