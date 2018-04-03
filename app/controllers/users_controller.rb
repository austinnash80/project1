class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
  @user = User.new user_params
  if @user.save
    redirect_to root_path
  else
    render :new #if the form is wrong they stay on the same page
  end
end

private
def user_params
  params.require(:user).permit(:email, :fname, :lname, :password, :password_confirmation)
end

end
