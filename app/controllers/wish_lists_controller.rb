class WishListsController < ApplicationController
  before_action :find_wish ,only:[:show,:edit,:update,:destroy]
  def index
    @new_wishes=NewWish.all
  end

  def new
    @new_wish = NewWish.new()

  end

  def create
    @new_wish = NewWish.new(clean_wish_params)


    if @new_wish.save
      redirect_to root_path , notice: "成功～"
    else
      render :new
    end
  end

  def show
    find_wish
  end

  def edit
    find_wish
  end

  def update
    find_wish
    if @new_wish.update(clean_wish_params)
      redirect_to root_path , notice: "成功～"
    else
      render :edit
    end
  end

  def destroy
    find_wish
    @new_wish.destroy
    redirect_to root_path
  end

  private
  def clean_wish_params
    params.require(:new_wish).permit( :title , :content)
  end 

  def find_wish
    @new_wish = NewWish.find(params[:id])
  end

end
