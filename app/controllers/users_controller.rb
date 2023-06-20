class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  before_action :set_user

  def show
  end

  def edit
  end

  def update
    if @user.create(user_params)
      redirect_to user_path(@user)
    else
      render :show, status: :unproccessable_entity
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
    authorize @user
  end
end
