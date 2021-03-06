class RolesController < ApplicationController
  before_action :fetch_role, only: [:show, :edit, :update, :destroy]

  def index
    @roles = Role.all
    @role = Role.new
  end

  def new
    @role = Role.new
  end

  def edit
  end

  def create
    @role = Role.new(role_params)

    if @role.save
      redirect_to roles_path
    else 
      render :new
    end
  end

  def show
    @role = Role.find(params[:id])
  end

  def update

    if @role.update_attributes(role_params)
      redirect_to role_path(@role)
    else 
      render :edit
    end
  end

  def destroy
    @role.destroy
    redirect_to roles_path
  end

  private

    def role_params
      params.require(:role).permit(:name)
    end

    def fetch_role
      @role = Role.find(params[:id])
    end

end   