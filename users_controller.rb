class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.image_name = params[:image_name]
    @user.name = params[:name]
    @user.area = params[:area]
    @user.email = params[:email]
    @user.member = params[:member]
    @user.profile = params[:profile]
    if @user.save
        flash[:notice] = "奏者情報を編集しました"
        redirect_to("/users/#{@user.id}")
    else
        render("users/edit")
    end
  end
end
