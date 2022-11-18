class WishListsController < ApplicationController
 
  def index
    @wish_lists=WishList.all
  end

  def new
    @wish_list = WishList.new
  end

  def create
    @wish_list = WishList.new(clean_wish_params)
    if(@wish_list.save)
      redirect_to root_path ,notice: "新增成功！"
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
    if @wish_list.update(clean_wish_params)
      redirect_to root_path , notice: "成功更新許願卡！"
    else
      render :edit
    end
  end


  def destroy
    find_wish
    @wish_list.destroy
    redirect_to root_path, notice: "資料已刪除"
  end

  private
  def clean_wish_params
    params.require(:wish_list).permit(:title, :content)
  end

  def find_wish
    @wish_list = WishList.find(params[:id])
  end
end
