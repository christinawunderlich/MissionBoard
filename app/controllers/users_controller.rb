class UsersController < ApplicationController
  def index
    if current_user.present?
      redirect_to board_path
    else
      @users = User.all
      @user = User.new
    end
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to board_path(user_id: @user.id)
    else 
      render :index, notice: 'User cannot be empty'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :photo)
  end

end

