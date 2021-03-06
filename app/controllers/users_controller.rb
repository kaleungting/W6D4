class UsersController < ApplicationController

  def index
    if params[:username]
      #WHERE username LIKE '%Steven Adler%'
      users = User.where("username LIKE ?", "%#{params[:username]}%")
    else
      users = User.all
    end
    
    render json: users
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else  
     render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_url(user[:id])
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to users_url
  end

  private
  def user_params
    params.require(:user).permit(:username)
  end
  
 end