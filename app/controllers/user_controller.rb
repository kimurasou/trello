class UserController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "ユーザー情報を編集しました"
      redirect_to root_path
    else
      render action: edit
    end

  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
