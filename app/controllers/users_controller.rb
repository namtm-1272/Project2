class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:info] = "Sign up successed"

      redirect_to @user
    else
      flash[:danger] = "failed"
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email,
                                 :password, :password_confirmation, :phone_num, :address)
  end

end
