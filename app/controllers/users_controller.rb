class UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
    unless @user
      flash[:alert] = "ユーザーが見つかりませんでした。"
      redirect_to root_path
      return
    end
  end
end
