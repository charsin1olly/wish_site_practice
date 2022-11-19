class WishListsController < ApplicationController
  def index
    @wish_lists=WishList3.all
  end

  def new
    @wish_list  = WishList3.new
  end

  def create
    @wish_list=WishList3.new(clean_wish)
    if @wish_list.save
      redirect_to root_path ,notice: "新增成功"
    else
      render :new
    end
  end

  def show
    @wish_list = WishList3.find(params[:id])
  end

  def edit
    @wish_list = WishList3.find(params[:id])
  end

  def update
    @wish_list = WishList3.find(params[:id])
    if @wish_list.update(clean_wish)
      redirect_to root_path ,notice: "修改成功"
    else
      render :edit
    end
  end

  def destroy
    @wish_list = WishList3.find(params[:id])
    @wish_list.destroy
    redirect_to root_path ,notice:"刪除成功"
  end
  

  private
  def clean_wish
    params.require(:wish_list3).permit(:title ,:content)
  end

end
