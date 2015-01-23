class UsersController < ApplicationController

  def new
    @user = User.new
    respond_with @user
  end

  def create
    @user = User.new(user_params)
    return respond_with @user unless @user.valid?
    respond_to do |format|
      format.html { render :new }
    end
  end

  private

  def user_params
    params.require(:user).permit :email
  end
end
