class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to @user
    else
      render :new
    end
  end

  def create
    @user = User.new(user_params)
 
    if @user.update(user_params)
      redirect_to @user
      # binding.pry
    else
      render :new
    end
  end

  def new
    @user = User.new
  end

  def favorites
    @user = User.find(params[:id])
  end
  
  def matches
    @user = User.find(params[:id])
  end
  

private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :username, ploy_ids: [], wave_ids: [])
  end

end
