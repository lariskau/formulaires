class PagesController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @users = User.all
  end

  def create
    @user = User.create username: params[:username], email: params[:email], bio: params[:bio]
    if @user.save
      redirect_to "/new"
    else
      redirect_to "/error"
    end
  end

  def error
  end

  def profil
    @user = User.find(params[:id])
  end

  def update_bio
    @user = User.find(params[:id])
    @user.bio = params[:bio]
    @user.save
    redirect_to "/new/#{params[:id]}"
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to "/new"
end
end
