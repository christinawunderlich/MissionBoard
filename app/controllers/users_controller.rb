class UsersController < ApplicationController
  def index
  	@users = User.all

    @user = User.new

  end

  def create
  	@user = User.new(user_params)

  	respond_to do |format|
  		if @user.save
  		  format.html { redirect_to boards_url , notice: 'User was successfully created.' }
      else 
        format.html { render :index}
      end
    end
  end

end


private

def user_params
	params.require(:user).permit(:name)
end
