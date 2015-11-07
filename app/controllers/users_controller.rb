class UsersController < ApplicationController
# POST   /users(.:format)             users#create
# new_user GET  /users/new(.:format)  users#new

  include SessionsHelper

# before_action :authenticate, except: [:new, :create]
  def new
    @user = User.new
  end

  def create
   User.create(user_params)
    if @user.save
      session[:current_user_id] = @user.id
      redirect_to profile_path
    else
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    session[:current_user_id] = nil
    @user.destroy
    redirect_to root_path
  end

# profile GET    /users/profile(.:format)     users#profile
	def profile
		authenticate!
    @user = current_user
	end

# log_in GET    /users/log_in(.:format)       users#log_in
	def log_in
      
	end




  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :email, :name)
  end

end
