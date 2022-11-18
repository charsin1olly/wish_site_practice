class WishListsController < ApplicationController
 
  def index
    @wish_lists=WishList.all
  end

  def new
    @wish_list = WishList.new
  end

  def create
    @wish_list = WishList.new(clean_wish_param)
    if(@wish_list.save)
      redirect_to root_path ,notice: "新增成功！"
    else
      render :new
    end
  end

  def show
    @wish_list = WishList.find(params[:id])
  end

  private
  def clean_wish_param
    params.require(:wish_list).permit(:title , :content)
  end
end
