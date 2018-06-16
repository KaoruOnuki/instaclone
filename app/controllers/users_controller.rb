class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :show, :update]
  before_action :your_page, only: [:edit, :show, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user.id)
    else
      render "new"
    end
  end

  def edit
  end

  def show
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :profile_picture, :profile_picture_cache)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def your_page
    unless logged_in?
      redirect_to new_session_path
    end
  end
end
