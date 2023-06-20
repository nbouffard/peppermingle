class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def update
    @user = User.find(params[:id])
    authorize @user
    if @user.create(user_params)
      redirect_to user_path(@user)
    else
      render :show, status: :unproccessable_entity
    end
  end
end
