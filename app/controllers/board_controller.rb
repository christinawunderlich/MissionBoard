class BoardController < ApplicationController
  
  def enter
    session[:current_user_id] = params[:user_id]
    redirect_to board_path
  end

  def show
    @user = current_user 
    @users = User.all 
    @roles = Role.all 
    @todos = Todo.all 
  end

  def exit
    session[:current_user_id] = nil
    redirect_to users_path
  end

end
