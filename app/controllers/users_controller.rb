class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = Book.all
    @post_images = PostImage.all
  end

  def index
    @user = User.all
    @book = Book.new
    @post_images = PostImage.all
  end

  def edit
  end
  
  def update
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
